# File generated from our OpenAPI spec
defmodule Stripe.Resources.Tax.Registration do
  @moduledoc """
  TaxProductRegistrationsResourceTaxRegistration

  A Tax `Registration` lets us know that your business is registered to collect tax on payments within a region, enabling you to [automatically collect tax](https://docs.stripe.com/tax).

  Stripe doesn't register on your behalf with the relevant authorities when you create a Tax `Registration` object. For more information on how to register to collect tax, see [our guide](https://docs.stripe.com/tax/registering).

  Related guide: [Using the Registrations API](https://docs.stripe.com/tax/registrations-api)
  """

  @typedoc """
  * `active_from` - Time at which the registration becomes active. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `country` - Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)). Max length: 5000.
  * `country_options` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `expires_at` - If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `tax.registration`.
  * `status` - The status of the registration. This field is present for convenience and can be deduced from `active_from` and `expires_at`. Possible values: `active`, `expired`, `scheduled`.
  """
  @type t :: %__MODULE__{
          active_from: integer(),
          country: String.t(),
          country_options: map(),
          created: integer(),
          expires_at: integer(),
          id: String.t(),
          livemode: boolean(),
          object: String.t(),
          status: String.t()
        }

  defstruct [
    :active_from,
    :country,
    :country_options,
    :created,
    :expires_at,
    :id,
    :livemode,
    :object,
    :status
  ]

  @object_name "tax.registration"
  def object_name, do: @object_name

  def expandable_fields, do: ["country_options"]

  defmodule CountryOptions do
    @moduledoc false

    @typedoc """
    * `ae`
    * `al`
    * `am`
    * `ao`
    * `at`
    * `au`
    * `aw`
    * `az`
    * `ba`
    * `bb`
    * `bd`
    * `be`
    * `bf`
    * `bg`
    * `bh`
    * `bj`
    * `bs`
    * `by`
    * `ca`
    * `cd`
    * `ch`
    * `cl`
    * `cm`
    * `co`
    * `cr`
    * `cv`
    * `cy`
    * `cz`
    * `de`
    * `dk`
    * `ec`
    * `ee`
    * `eg`
    * `es`
    * `et`
    * `fi`
    * `fr`
    * `gb`
    * `ge`
    * `gn`
    * `gr`
    * `hr`
    * `hu`
    * `id`
    * `ie`
    * `in`
    * `is`
    * `it`
    * `jp`
    * `ke`
    * `kg`
    * `kh`
    * `kr`
    * `kz`
    * `la`
    * `lt`
    * `lu`
    * `lv`
    * `ma`
    * `md`
    * `me`
    * `mk`
    * `mr`
    * `mt`
    * `mx`
    * `my`
    * `ng`
    * `nl`
    * `no`
    * `np`
    * `nz`
    * `om`
    * `pe`
    * `ph`
    * `pl`
    * `pt`
    * `ro`
    * `rs`
    * `ru`
    * `sa`
    * `se`
    * `sg`
    * `si`
    * `sk`
    * `sn`
    * `sr`
    * `th`
    * `tj`
    * `tr`
    * `tw`
    * `tz`
    * `ua`
    * `ug`
    * `us`
    * `uy`
    * `uz`
    * `vn`
    * `za`
    * `zm`
    * `zw`
    """
    @type t :: %__MODULE__{
            ae: map() | nil,
            al: map() | nil,
            am: map() | nil,
            ao: map() | nil,
            at: map() | nil,
            au: map() | nil,
            aw: map() | nil,
            az: map() | nil,
            ba: map() | nil,
            bb: map() | nil,
            bd: map() | nil,
            be: map() | nil,
            bf: map() | nil,
            bg: map() | nil,
            bh: map() | nil,
            bj: map() | nil,
            bs: map() | nil,
            by: map() | nil,
            ca: map() | nil,
            cd: map() | nil,
            ch: map() | nil,
            cl: map() | nil,
            cm: map() | nil,
            co: map() | nil,
            cr: map() | nil,
            cv: map() | nil,
            cy: map() | nil,
            cz: map() | nil,
            de: map() | nil,
            dk: map() | nil,
            ec: map() | nil,
            ee: map() | nil,
            eg: map() | nil,
            es: map() | nil,
            et: map() | nil,
            fi: map() | nil,
            fr: map() | nil,
            gb: map() | nil,
            ge: map() | nil,
            gn: map() | nil,
            gr: map() | nil,
            hr: map() | nil,
            hu: map() | nil,
            id: map() | nil,
            ie: map() | nil,
            in: map() | nil,
            is: map() | nil,
            it: map() | nil,
            jp: map() | nil,
            ke: map() | nil,
            kg: map() | nil,
            kh: map() | nil,
            kr: map() | nil,
            kz: map() | nil,
            la: map() | nil,
            lt: map() | nil,
            lu: map() | nil,
            lv: map() | nil,
            ma: map() | nil,
            md: map() | nil,
            me: map() | nil,
            mk: map() | nil,
            mr: map() | nil,
            mt: map() | nil,
            mx: map() | nil,
            my: map() | nil,
            ng: map() | nil,
            nl: map() | nil,
            no: map() | nil,
            np: map() | nil,
            nz: map() | nil,
            om: map() | nil,
            pe: map() | nil,
            ph: map() | nil,
            pl: map() | nil,
            pt: map() | nil,
            ro: map() | nil,
            rs: map() | nil,
            ru: map() | nil,
            sa: map() | nil,
            se: map() | nil,
            sg: map() | nil,
            si: map() | nil,
            sk: map() | nil,
            sn: map() | nil,
            sr: map() | nil,
            th: map() | nil,
            tj: map() | nil,
            tr: map() | nil,
            tw: map() | nil,
            tz: map() | nil,
            ua: map() | nil,
            ug: map() | nil,
            us: map() | nil,
            uy: map() | nil,
            uz: map() | nil,
            vn: map() | nil,
            za: map() | nil,
            zm: map() | nil,
            zw: map() | nil
          }
    defstruct [
      :ae,
      :al,
      :am,
      :ao,
      :at,
      :au,
      :aw,
      :az,
      :ba,
      :bb,
      :bd,
      :be,
      :bf,
      :bg,
      :bh,
      :bj,
      :bs,
      :by,
      :ca,
      :cd,
      :ch,
      :cl,
      :cm,
      :co,
      :cr,
      :cv,
      :cy,
      :cz,
      :de,
      :dk,
      :ec,
      :ee,
      :eg,
      :es,
      :et,
      :fi,
      :fr,
      :gb,
      :ge,
      :gn,
      :gr,
      :hr,
      :hu,
      :id,
      :ie,
      :in,
      :is,
      :it,
      :jp,
      :ke,
      :kg,
      :kh,
      :kr,
      :kz,
      :la,
      :lt,
      :lu,
      :lv,
      :ma,
      :md,
      :me,
      :mk,
      :mr,
      :mt,
      :mx,
      :my,
      :ng,
      :nl,
      :no,
      :np,
      :nz,
      :om,
      :pe,
      :ph,
      :pl,
      :pt,
      :ro,
      :rs,
      :ru,
      :sa,
      :se,
      :sg,
      :si,
      :sk,
      :sn,
      :sr,
      :th,
      :tj,
      :tr,
      :tw,
      :tz,
      :ua,
      :ug,
      :us,
      :uy,
      :uz,
      :vn,
      :za,
      :zm,
      :zw
    ]

    defmodule Ae do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Al do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Am do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ao do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule At do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Au do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Aw do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Az do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ba do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Bb do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Bd do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Be do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Bf do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Bg do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Bh do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Bj do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Bs do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule By do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ca do
      @moduledoc false

      @typedoc """
      * `province_standard`
      * `type` - Type of registration in Canada. Possible values: `province_standard`, `simplified`, `standard`.
      """
      @type t :: %__MODULE__{
              province_standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:province_standard, :type]

      defmodule ProvinceStandard do
        @moduledoc false

        @typedoc """
        * `province` - Two-letter CA province code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)). Max length: 5000.
        """
        @type t :: %__MODULE__{
                province: String.t() | nil
              }
        defstruct [:province]
      end

      def __inner_types__ do
        %{
          "province_standard" => __MODULE__.ProvinceStandard
        }
      end
    end

    defmodule Cd do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ch do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Cl do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Cm do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Co do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Cr do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Cv do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Cy do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Cz do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule De do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Dk do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Ec do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ee do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Eg do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Es do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Et do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Fi do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Fr do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Gb do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Ge do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Gn do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Gr do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Hr do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Hu do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Id do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ie do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule In do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Is do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule It do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Jp do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Ke do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Kg do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Kh do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Kr do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Kz do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule La do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Lt do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Lu do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Lv do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Ma do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Md do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Me do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Mk do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Mr do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Mt do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Mx do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule My do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ng do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Nl do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule No do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Np do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Nz do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Om do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Pe do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ph do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Pl do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Pt do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Ro do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Rs do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ru do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Sa do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Se do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Sg do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an Default standard registration. Possible values: `inbound_goods`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Si do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Sk do
      @moduledoc false

      @typedoc """
      * `standard`
      * `type` - Type of registration in an EU country. Possible values: `ioss`, `oss_non_union`, `oss_union`, `standard`.
      """
      @type t :: %__MODULE__{
              standard: map() | nil,
              type: String.t() | nil
            }
      defstruct [:standard, :type]

      defmodule Standard do
        @moduledoc false

        @typedoc """
        * `place_of_supply_scheme` - Place of supply scheme used in an EU standard registration. Possible values: `inbound_goods`, `small_seller`, `standard`.
        """
        @type t :: %__MODULE__{
                place_of_supply_scheme: String.t() | nil
              }
        defstruct [:place_of_supply_scheme]
      end

      def __inner_types__ do
        %{
          "standard" => __MODULE__.Standard
        }
      end
    end

    defmodule Sn do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Sr do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Th do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Tj do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Tr do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Tw do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Tz do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ua do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Ug do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Us do
      @moduledoc false

      @typedoc """
      * `local_amusement_tax`
      * `local_lease_tax`
      * `state` - Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)). Max length: 5000.
      * `state_sales_tax`
      * `type` - Type of registration in the US. Possible values: `local_amusement_tax`, `local_lease_tax`, `state_communications_tax`, `state_retail_delivery_fee`, `state_sales_tax`.
      """
      @type t :: %__MODULE__{
              local_amusement_tax: map() | nil,
              local_lease_tax: map() | nil,
              state: String.t() | nil,
              state_sales_tax: map() | nil,
              type: String.t() | nil
            }
      defstruct [:local_amusement_tax, :local_lease_tax, :state, :state_sales_tax, :type]

      defmodule LocalAmusementTax do
        @moduledoc false

        @typedoc """
        * `jurisdiction` - A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Max length: 5000.
        """
        @type t :: %__MODULE__{
                jurisdiction: String.t() | nil
              }
        defstruct [:jurisdiction]
      end

      defmodule LocalLeaseTax do
        @moduledoc false

        @typedoc """
        * `jurisdiction` - A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Max length: 5000.
        """
        @type t :: %__MODULE__{
                jurisdiction: String.t() | nil
              }
        defstruct [:jurisdiction]
      end

      defmodule StateSalesTax do
        @moduledoc false

        @typedoc """
        * `elections` - Elections for the state sales tax registration.
        """
        @type t :: %__MODULE__{
                elections: [map()] | nil
              }
        defstruct [:elections]

        defmodule Elections do
          @moduledoc false

          @typedoc """
          * `jurisdiction` - A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Max length: 5000.
          * `type` - The type of the election for the state sales tax registration. Possible values: `local_use_tax`, `simplified_sellers_use_tax`, `single_local_use_tax`.
          """
          @type t :: %__MODULE__{
                  jurisdiction: String.t() | nil,
                  type: String.t() | nil
                }
          defstruct [:jurisdiction, :type]
        end

        def __inner_types__ do
          %{
            "elections" => __MODULE__.Elections
          }
        end
      end

      def __inner_types__ do
        %{
          "local_amusement_tax" => __MODULE__.LocalAmusementTax,
          "local_lease_tax" => __MODULE__.LocalLeaseTax,
          "state_sales_tax" => __MODULE__.StateSalesTax
        }
      end
    end

    defmodule Uy do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Uz do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Vn do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Za do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Zm do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `simplified`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    defmodule Zw do
      @moduledoc false

      @typedoc """
      * `type` - Type of registration in `country`. Possible values: `standard`.
      """
      @type t :: %__MODULE__{
              type: String.t() | nil
            }
      defstruct [:type]
    end

    def __inner_types__ do
      %{
        "ae" => __MODULE__.Ae,
        "al" => __MODULE__.Al,
        "am" => __MODULE__.Am,
        "ao" => __MODULE__.Ao,
        "at" => __MODULE__.At,
        "au" => __MODULE__.Au,
        "aw" => __MODULE__.Aw,
        "az" => __MODULE__.Az,
        "ba" => __MODULE__.Ba,
        "bb" => __MODULE__.Bb,
        "bd" => __MODULE__.Bd,
        "be" => __MODULE__.Be,
        "bf" => __MODULE__.Bf,
        "bg" => __MODULE__.Bg,
        "bh" => __MODULE__.Bh,
        "bj" => __MODULE__.Bj,
        "bs" => __MODULE__.Bs,
        "by" => __MODULE__.By,
        "ca" => __MODULE__.Ca,
        "cd" => __MODULE__.Cd,
        "ch" => __MODULE__.Ch,
        "cl" => __MODULE__.Cl,
        "cm" => __MODULE__.Cm,
        "co" => __MODULE__.Co,
        "cr" => __MODULE__.Cr,
        "cv" => __MODULE__.Cv,
        "cy" => __MODULE__.Cy,
        "cz" => __MODULE__.Cz,
        "de" => __MODULE__.De,
        "dk" => __MODULE__.Dk,
        "ec" => __MODULE__.Ec,
        "ee" => __MODULE__.Ee,
        "eg" => __MODULE__.Eg,
        "es" => __MODULE__.Es,
        "et" => __MODULE__.Et,
        "fi" => __MODULE__.Fi,
        "fr" => __MODULE__.Fr,
        "gb" => __MODULE__.Gb,
        "ge" => __MODULE__.Ge,
        "gn" => __MODULE__.Gn,
        "gr" => __MODULE__.Gr,
        "hr" => __MODULE__.Hr,
        "hu" => __MODULE__.Hu,
        "id" => __MODULE__.Id,
        "ie" => __MODULE__.Ie,
        "in" => __MODULE__.In,
        "is" => __MODULE__.Is,
        "it" => __MODULE__.It,
        "jp" => __MODULE__.Jp,
        "ke" => __MODULE__.Ke,
        "kg" => __MODULE__.Kg,
        "kh" => __MODULE__.Kh,
        "kr" => __MODULE__.Kr,
        "kz" => __MODULE__.Kz,
        "la" => __MODULE__.La,
        "lt" => __MODULE__.Lt,
        "lu" => __MODULE__.Lu,
        "lv" => __MODULE__.Lv,
        "ma" => __MODULE__.Ma,
        "md" => __MODULE__.Md,
        "me" => __MODULE__.Me,
        "mk" => __MODULE__.Mk,
        "mr" => __MODULE__.Mr,
        "mt" => __MODULE__.Mt,
        "mx" => __MODULE__.Mx,
        "my" => __MODULE__.My,
        "ng" => __MODULE__.Ng,
        "nl" => __MODULE__.Nl,
        "no" => __MODULE__.No,
        "np" => __MODULE__.Np,
        "nz" => __MODULE__.Nz,
        "om" => __MODULE__.Om,
        "pe" => __MODULE__.Pe,
        "ph" => __MODULE__.Ph,
        "pl" => __MODULE__.Pl,
        "pt" => __MODULE__.Pt,
        "ro" => __MODULE__.Ro,
        "rs" => __MODULE__.Rs,
        "ru" => __MODULE__.Ru,
        "sa" => __MODULE__.Sa,
        "se" => __MODULE__.Se,
        "sg" => __MODULE__.Sg,
        "si" => __MODULE__.Si,
        "sk" => __MODULE__.Sk,
        "sn" => __MODULE__.Sn,
        "sr" => __MODULE__.Sr,
        "th" => __MODULE__.Th,
        "tj" => __MODULE__.Tj,
        "tr" => __MODULE__.Tr,
        "tw" => __MODULE__.Tw,
        "tz" => __MODULE__.Tz,
        "ua" => __MODULE__.Ua,
        "ug" => __MODULE__.Ug,
        "us" => __MODULE__.Us,
        "uy" => __MODULE__.Uy,
        "uz" => __MODULE__.Uz,
        "vn" => __MODULE__.Vn,
        "za" => __MODULE__.Za,
        "zm" => __MODULE__.Zm,
        "zw" => __MODULE__.Zw
      }
    end
  end

  def __inner_types__ do
    %{
      "country_options" => __MODULE__.CountryOptions
    }
  end
end
