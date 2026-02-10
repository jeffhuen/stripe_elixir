# File generated from our OpenAPI spec
defmodule Stripe.Params.Tax.RegistrationCreateParams do
  @moduledoc "Parameters for registration create."

  @typedoc """
  * `active_from` - Time at which the Tax Registration becomes active. It can be either `now` to indicate the current time, or a future timestamp measured in seconds since the Unix epoch.
  * `country` - Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)). Max length: 5000.
  * `country_options` - Specific options for a registration in the specified `country`.
  * `expand` - Specifies which fields in the response should be expanded.
  * `expires_at` - If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch. Format: Unix timestamp.
  """
  @type t :: %__MODULE__{
          active_from: map(),
          country: String.t(),
          country_options: map(),
          expand: [String.t()] | nil,
          expires_at: integer() | nil
        }

  defstruct [:active_from, :country, :country_options, :expand, :expires_at]

  defmodule CountryOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `ae` - Options for the registration in AE.
    * `al` - Options for the registration in AL.
    * `am` - Options for the registration in AM.
    * `ao` - Options for the registration in AO.
    * `at` - Options for the registration in AT.
    * `au` - Options for the registration in AU.
    * `aw` - Options for the registration in AW.
    * `az` - Options for the registration in AZ.
    * `ba` - Options for the registration in BA.
    * `bb` - Options for the registration in BB.
    * `bd` - Options for the registration in BD.
    * `be` - Options for the registration in BE.
    * `bf` - Options for the registration in BF.
    * `bg` - Options for the registration in BG.
    * `bh` - Options for the registration in BH.
    * `bj` - Options for the registration in BJ.
    * `bs` - Options for the registration in BS.
    * `by` - Options for the registration in BY.
    * `ca` - Options for the registration in CA.
    * `cd` - Options for the registration in CD.
    * `ch` - Options for the registration in CH.
    * `cl` - Options for the registration in CL.
    * `cm` - Options for the registration in CM.
    * `co` - Options for the registration in CO.
    * `cr` - Options for the registration in CR.
    * `cv` - Options for the registration in CV.
    * `cy` - Options for the registration in CY.
    * `cz` - Options for the registration in CZ.
    * `de` - Options for the registration in DE.
    * `dk` - Options for the registration in DK.
    * `ec` - Options for the registration in EC.
    * `ee` - Options for the registration in EE.
    * `eg` - Options for the registration in EG.
    * `es` - Options for the registration in ES.
    * `et` - Options for the registration in ET.
    * `fi` - Options for the registration in FI.
    * `fr` - Options for the registration in FR.
    * `gb` - Options for the registration in GB.
    * `ge` - Options for the registration in GE.
    * `gn` - Options for the registration in GN.
    * `gr` - Options for the registration in GR.
    * `hr` - Options for the registration in HR.
    * `hu` - Options for the registration in HU.
    * `id` - Options for the registration in ID.
    * `ie` - Options for the registration in IE.
    * `in` - Options for the registration in IN.
    * `is` - Options for the registration in IS.
    * `it` - Options for the registration in IT.
    * `jp` - Options for the registration in JP.
    * `ke` - Options for the registration in KE.
    * `kg` - Options for the registration in KG.
    * `kh` - Options for the registration in KH.
    * `kr` - Options for the registration in KR.
    * `kz` - Options for the registration in KZ.
    * `la` - Options for the registration in LA.
    * `lt` - Options for the registration in LT.
    * `lu` - Options for the registration in LU.
    * `lv` - Options for the registration in LV.
    * `ma` - Options for the registration in MA.
    * `md` - Options for the registration in MD.
    * `me` - Options for the registration in ME.
    * `mk` - Options for the registration in MK.
    * `mr` - Options for the registration in MR.
    * `mt` - Options for the registration in MT.
    * `mx` - Options for the registration in MX.
    * `my` - Options for the registration in MY.
    * `ng` - Options for the registration in NG.
    * `nl` - Options for the registration in NL.
    * `no` - Options for the registration in NO.
    * `np` - Options for the registration in NP.
    * `nz` - Options for the registration in NZ.
    * `om` - Options for the registration in OM.
    * `pe` - Options for the registration in PE.
    * `ph` - Options for the registration in PH.
    * `pl` - Options for the registration in PL.
    * `pt` - Options for the registration in PT.
    * `ro` - Options for the registration in RO.
    * `rs` - Options for the registration in RS.
    * `ru` - Options for the registration in RU.
    * `sa` - Options for the registration in SA.
    * `se` - Options for the registration in SE.
    * `sg` - Options for the registration in SG.
    * `si` - Options for the registration in SI.
    * `sk` - Options for the registration in SK.
    * `sn` - Options for the registration in SN.
    * `sr` - Options for the registration in SR.
    * `th` - Options for the registration in TH.
    * `tj` - Options for the registration in TJ.
    * `tr` - Options for the registration in TR.
    * `tw` - Options for the registration in TW.
    * `tz` - Options for the registration in TZ.
    * `ua` - Options for the registration in UA.
    * `ug` - Options for the registration in UG.
    * `us` - Options for the registration in US.
    * `uy` - Options for the registration in UY.
    * `uz` - Options for the registration in UZ.
    * `vn` - Options for the registration in VN.
    * `za` - Options for the registration in ZA.
    * `zm` - Options for the registration in ZM.
    * `zw` - Options for the registration in ZW.
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
  end
end
