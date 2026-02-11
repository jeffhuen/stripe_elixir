defmodule Stripe.ResourceShapeTest do
  @moduledoc """
  Spot-check tests that verify key generated resource modules have the
  expected fields, inner type modules, and __inner_types__ mappings.

  These catch regressions in the generator's type resolution logic —
  e.g. non-resource $ref schemas being flattened to map() instead of
  creating typed inner modules.
  """
  use ExUnit.Case, async: true

  alias Stripe.Resources.Charge
  alias Stripe.Resources.Event
  alias Stripe.Resources.InvoiceLineItem
  alias Stripe.Resources.Price

  # -- Charge -----------------------------------------------------------------

  describe "Charge" do
    test "has :invoice field (field override)" do
      assert Map.has_key?(%Charge{}, :invoice)
    end

    test "has inner type modules for non-resource $ref properties" do
      for mod <- [
            Charge.BillingDetails,
            Charge.FraudDetails,
            Charge.Outcome,
            Charge.PaymentMethodDetails,
            Charge.Refunds,
            Charge.TransferData
          ] do
        assert Code.ensure_loaded?(mod), "Expected inner type module #{inspect(mod)}"
        assert function_exported?(mod, :__struct__, 0), "#{inspect(mod)} missing defstruct"
      end
    end

    test "BillingDetails has expected fields" do
      bd = %Charge.BillingDetails{}

      for field <- [:address, :email, :name, :phone] do
        assert Map.has_key?(bd, field), "BillingDetails missing :#{field}"
      end
    end

    test "Outcome has expected fields" do
      outcome = %Charge.Outcome{}

      for field <- [:network_status, :risk_level, :risk_score, :seller_message, :type] do
        assert Map.has_key?(outcome, field), "Outcome missing :#{field}"
      end
    end

    test "PaymentMethodDetails has deeply nested inner types" do
      # Card.Checks is 2 levels deep inside PaymentMethodDetails
      assert Code.ensure_loaded?(Charge.PaymentMethodDetails.Card)
      assert Code.ensure_loaded?(Charge.PaymentMethodDetails.Card.Checks)

      checks = %Charge.PaymentMethodDetails.Card.Checks{}
      assert Map.has_key?(checks, :address_line1_check)
      assert Map.has_key?(checks, :cvc_check)
    end

    test "__inner_types__ includes inner modules and resource refs" do
      inner = Charge.__inner_types__()

      # Inner type modules
      assert inner["billing_details"] == Charge.BillingDetails
      assert inner["fraud_details"] == Charge.FraudDetails
      assert inner["outcome"] == Charge.Outcome
      assert inner["payment_method_details"] == Charge.PaymentMethodDetails
      assert inner["refunds"] == Charge.Refunds
      assert inner["transfer_data"] == Charge.TransferData

      # Resource inner refs (direct $ref to another resource)
      assert inner["shipping"] == Stripe.Resources.ShippingDetails
      assert inner["source"] == Stripe.Resources.PaymentSource
    end
  end

  # -- Price ------------------------------------------------------------------

  describe "Price" do
    test "has Recurring inner module with expected fields" do
      assert Code.ensure_loaded?(Price.Recurring)

      recurring = %Price.Recurring{}

      for field <- [:interval, :interval_count, :meter, :trial_period_days, :usage_type] do
        assert Map.has_key?(recurring, field), "Recurring missing :#{field}"
      end
    end

    test "has CustomUnitAmount inner module" do
      assert Code.ensure_loaded?(Price.CustomUnitAmount)

      cua = %Price.CustomUnitAmount{}

      for field <- [:maximum, :minimum, :preset] do
        assert Map.has_key?(cua, field), "CustomUnitAmount missing :#{field}"
      end
    end

    test "has TransformQuantity inner module" do
      assert Code.ensure_loaded?(Price.TransformQuantity)
      tq = %Price.TransformQuantity{}
      assert Map.has_key?(tq, :divide_by)
      assert Map.has_key?(tq, :round)
    end

    test "__inner_types__ maps to inner modules" do
      inner = Price.__inner_types__()
      assert inner["recurring"] == Price.Recurring
      assert inner["custom_unit_amount"] == Price.CustomUnitAmount
      assert inner["tiers"] == Price.Tiers
      assert inner["transform_quantity"] == Price.TransformQuantity
    end
  end

  # -- InvoiceLineItem --------------------------------------------------------

  describe "InvoiceLineItem" do
    test "has Period inner module with start/end" do
      assert Code.ensure_loaded?(InvoiceLineItem.Period)

      period = %InvoiceLineItem.Period{}
      assert Map.has_key?(period, :start)
      assert Map.has_key?(period, :end)
    end

    test "has Parent inner module with nested children" do
      assert Code.ensure_loaded?(InvoiceLineItem.Parent)

      parent = %InvoiceLineItem.Parent{}
      assert Map.has_key?(parent, :type)
      assert Map.has_key?(parent, :invoice_item_details)
      assert Map.has_key?(parent, :subscription_item_details)

      # Deeply nested: Parent.InvoiceItemDetails
      assert Code.ensure_loaded?(InvoiceLineItem.Parent.InvoiceItemDetails)
      iid = %InvoiceLineItem.Parent.InvoiceItemDetails{}
      assert Map.has_key?(iid, :invoice_item)
      assert Map.has_key?(iid, :proration)
    end

    test "Parent has __inner_types__ for nested modules" do
      inner = InvoiceLineItem.Parent.__inner_types__()
      assert inner["invoice_item_details"] == InvoiceLineItem.Parent.InvoiceItemDetails
      assert inner["subscription_item_details"] == InvoiceLineItem.Parent.SubscriptionItemDetails
    end

    test "__inner_types__ includes period and parent" do
      inner = InvoiceLineItem.__inner_types__()
      assert inner["period"] == InvoiceLineItem.Period
      assert inner["parent"] == InvoiceLineItem.Parent
    end
  end

  # -- Event ------------------------------------------------------------------

  describe "Event" do
    test "has Request inner module with id and idempotency_key" do
      assert Code.ensure_loaded?(Event.Request)

      request = %Event.Request{}
      assert Map.has_key?(request, :id)
      assert Map.has_key?(request, :idempotency_key)
    end

    test "__inner_types__ includes resource ref for data and inner module for request" do
      inner = Event.__inner_types__()
      assert inner["data"] == Stripe.Resources.EventData
      assert inner["request"] == Event.Request
    end
  end
end
