# frozen_string_literal: true
# Regex source: http://unicode.org/cldr/trac/browser/trunk/common/supplemental/postalCodeData.xml
# 159 countries supported
#
module ValidatesZipcode
  module CldrRegexpCollection
    ZIPCODES_REGEX = {
      GB: /\AGIR ?0AA|((([A-Z]\d{1,2})|(([A-Z][A-HJ-Y]\d{1,2})|(([A-Z]\d[A-Z])|([A-Z][A-HJ-Y]\d?[A-Z])))) ?\d[A-Z]{2})\z/i,
      UK: /\AGIR ?0AA|((([A-Z]\d{1,2})|(([A-Z][A-HJ-Y]\d{1,2})|(([A-Z]\d[A-Z])|([A-Z][A-HJ-Y]\d?[A-Z])))) ?\d[A-Z]{2})\z/i,
      # GB: /\AGIR[ ]?0AA|((AB|AL|B|BA|BB|BD|BH|BL|BN|BR|BS|BT|CA|CB|CF|CH|CM|CO|CR|CT|CV|CW|DA|DD|DE|DG|DH|DL|DN|DT|DY|E|EC|EH|EN|EX|FK|FY|G|GL|GY|GU|HA|HD|HG|HP|HR|HS|HU|HX|IG|IM|IP|IV|JE|KA|KT|KW|KY|L|LA|LD|LE|LL|LN|LS|LU|M|ME|MK|ML|N|NE|NG|NN|NP|NR|NW|OL|OX|PA|PE|PH|PL|PO|PR|RG|RH|RM|S|SA|SE|SG|SK|SL|SM|SN|SO|SP|SR|SS|ST|SW|SY|TA|TD|TF|TN|TQ|TR|TS|TW|UB|W|WA|WC|WD|WF|WN|WR|WS|WV|YO|ZE)(\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}))|BFPO[ ]?\d{1,4}\z/i,
      # UK: /\A([A-PR-UWYZ0-9][A-HK-Y0-9][AEHMNPRTVXY0-9]?[ABEHMNPRVWXY0-9]? {1,2}[0-9][ABD-HJLN-UW-Z]{2}|GIR 0AA)\z/,
      JE: /\AJE\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}\z/i,
      GG: /\AGY\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}\z/i,
      IM: /\AIM\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}\z/i,
      US: /\A\d{5}([ \-](?:\d{4}|\d{6}))?\z/,
      IE: /\A([AC-FHKNPRTV-Y]\d{2}|D6W)\s?[0-9AC-FHKNPRTV-Y]{4}\z/,
      CA: /\A[ABCEGHJKLMNPRSTVXY]\d[ABCEGHJ-NPRSTV-Z][ ]?\d[ABCEGHJ-NPRSTV-Z]\d\z/,
      DE: /\A\d{5}\z/,
      AU: /\A\d{4}\z/,
      IT: /\A\d{5}\z/,
      CH: /\A\d{4}\z/,
      AT: /\A\d{4}\z/,
      ES: /\A\d{5}\z/,
      NL: /\A[1-9]\d{3}[ ]?(S[BCE-RT-Z]|[A-RT-Z][A-Z])\z/,
      BE: /\A\d{4}\z/,
      DK: /\A\d{4}\z/,
      NO: /\A\d{4}\z/,
      FI: /\A\d{5}\z/,
      AX: /\A22\d{3}\z/,
      KR: /\A(\d{5}|\d{3}[\-]\d{3})\z/,
      CN: /\A\d{6}\z/,
      SG: /\A\d{6}\z/,
      DZ: /\A\d{5}\z/,
      AD: /\AAD\d{3}\z/,
      AR: /\A[A-HJ-NP-Z]{1}\d{4}([A-Z]{3})?\z/,
      AM: /\A(37)?\d{4}\z/,
      BH: /\A(1[0-2]|[1-9])\d{2}\z/,
      BD: /\A\d{4}\z/,
      BB: /\ABB([1-2]\d{4}|15156667)\z/,
      BY: /\A\d{6}\z/,
      BM: /\A[A-Z]{2}[ ]?[A-Z0-9]{2}\z/,
      BA: /\A\d{5}\z/,
      BN: /\A[BKTP][A-Z][ ]?\d{4}\z/i,
      BG: /\A\d{4}\z/,
      KH: /\A\d{5}\z/,
      CV: /\A\d{4}\z/,
      CL: /\A\d{3}[-]?\d{4}\z/,
      HR: /\A\d{5}\z/,
      CY: /\A\d{4}\z/,
      CZ: /\A[1-7][0-9]{2}[ ]?\d{2}\z/,
      DO: /\A\d{5}\z/,
      EC: /\A\d{6}\z/,
      EE: /\A\d{5}\z/,
      FO: /\A\d{3}\z/,
      GE: /\A\d{4}\z/,
      GL: /\A39\d{2}\z/,
      GT: /\A\d{5}\z/,
      HT: /\A\d{4}\z/,
      HU: /\A\d{4}\z/,
      IS: /\A\d{3}\z/,
      IN: /\A\d{6}\z/,
      ID: /\A\d{5}\z/,
      IL: /\A(\d{5}|\d{7})\z/,
      JO: /\A\d{5}\z/,
      KZ: /\A\d{6}\z/,
      KE: /\A\d{5}\z/,
      KW: /\A\d{5}\z/,
      LA: /\A\d{5}\z/,
      LB: /\A(\d{4}([ ]?\d{4})?)?\z/,
      LU: /\A(L[\- ]?)?\d{4}\z/,
      MK: /\A\d{4}\z/,
      MY: /\A\d{5}\z/,
      MV: /\A\d{5}\z/,
      MT: /\A[A-Z]{3}[ ]?\d{2,4}\z/i,
      MU: /\A[AR1-9]\d{4}\z/i,
      MX: /\A\d{5}\z/,
      MA: /\A\d{5}\z/,
      NZ: /\A\d{4}\z/,
      NI: /\A\d{5}\z/,
      NG: /\A\d{6}\z/,
      OM: /\A(PC )?\d{3}\z/i,
      PK: /\A\d{5}\z/,
      PY: /\A\d{4}\z/,
      PH: /\A\d{4}\z/,
      PL: /\A\d{2}[ -]?\d{3}\z/,
      PR: /\A00[679]\d{2}([ \-]\d{4})?\z/,
      RO: /\A\d{6}\z/,
      RU: /\A\d{6}\z/,
      SM: /\A4789\d\z/,
      SA: /\A\d{5}\z/,
      SN: /\A\d{5}\z/,
      SI: /\A\d{4}\z/,
      ZA: /\A\d{4}\z/,
      LK: /\A\d{5}\z/,
      TJ: /\A\d{6}\z/,
      TH: /\A\d{5}\z/,
      TN: /\A\d{4}\z/,
      TR: /\A\d{5}\z/,
      TM: /\A\d{6}\z/,
      UA: /\A\d{5}\z/,
      UZ: /\A\d{6}\z/,
      VA: /\A00120\z/,
      VE: /\A\d{4}\z/,
      ZM: /\A\d{5}\z/,
      AS: /\A96799\z/,
      CC: /\A6799\z/,
      CK: /\A\d{4}\z/,
      RS: /\A\d{5}\z/,
      CS: /\A\d{5}\z/,
      YU: /\A\d{5}\z/,
      CX: /\A6798\z/,
      ET: /\A\d{4}\z/,
      FK: /\AFIQQ[ ]?1ZZ\z/i,
      NF: /\A2899\z/,
      FM: /\A(9694[1-4])([ \-]\d{4})?\z/,
      GF: /\A9[78]3\d{2}\z/,
      GP: /\A9[78][01]\d{2}\z/,
      GS: /\ASIQQ[ ]?1ZZ\z/i,
      GU: /\A969[1-3]\d([ \-]\d{4})?\z/,
      GW: /\A\d{4}\z/,
      HM: /\A\d{4}\z/,
      IQ: /\A\d{5}\z/,
      KG: /\A\d{6}\z/,
      LR: /\A\d{4}\z/,
      LS: /\A\d{3}\z/,
      MG: /\A\d{3}\z/,
      MN: /\A\d{6}\z/,
      MP: /\A9695[012]([ \-]\d{4})?\z/,
      MQ: /\A9[78]2\d{2}\z/,
      NC: /\A988\d{2}\z/,
      NE: /\A\d{4}\z/,
      PF: /\A987\d{2}\z/,
      PG: /\A\d{3}\z/,
      PM: /\A9[78]5\d{2}\z/,
      PN: /\APCRN[ ]?1ZZ\z/i,
      PW: /\A96940\z/,
      RE: /\A974\d{2}\z/,
      SH: /\A(ASCN|STHL|TDCU)[ ]?1ZZ\z/i,
      SJ: /\A\d{4}\z/,
      SZ: /\A[HLMS]\d{3}\z/i,
      TC: /\ATKCA[ ]?1ZZ\z/i,
      WF: /\A986\d{2}\z/,
      XK: /\A\d{5}\z/,
      YT: /\A976\d{2}\z/,
      # NOTE: UAE has no postal codes
      # https://github.com/dgilperez/validates_zipcode/issues/28
      # AE: /\A([A-Z\d\s]){3,}\z/i,
      AF: /\A\d{4}\z/,
      AL: /\A\d{4}\z/,
      AG: /\A([A-Z\d\s]){3,}\z/i,
      AO: /\A([A-Z\d\s]){3,}\z/i,
      AZ: /\A(AZ[ ]?)?\d{4}\z/i,
      BF: /\A([A-Z\d\s]){3,}\z/i,
      BI: /\A([A-Z\d\s]){3,}\z/i,
      BS: /\A([A-Z\d\s]){3,}\z/i,
      BZ: /\A([A-Z\d\s]){3,}\z/i,
      BR: /\A\d{5}(-?\d{3})?\z/,
      BJ: /\A([A-Z\d\s]){3,}\z/i,
      BT: /\A\d{5}\z/,
      BQ: /\A([A-Z\d\s]){3,}\z/i,
      BO: /\A\d{4}\z/,
      BW: /\A([A-Z\d\s]){3,}\z/i,
      CF: /\A([A-Z\d\s]){3,}\z/i,
      CG: /\A([A-Z\d\s]){3,}\z/i,
      CI: /\A([A-Z\d\s]){3,}\z/i,
      # NOTE: Cameroon has no postal codes
      # CM: /\A([A-Z\d]){3,7}\z/i,
      CO: /\A([A-Z\d\s]){3,}\z/i,
      CR: /\A\d{5}\z/,
      CU: /\A\d{5}\z/,
      KM: /\A([A-Z\d\s]){3,}\z/i,
      DJ: /\A([A-Z\d\s]){3,}\z/i,
      DM: /\A([A-Z\d\s]){3,}\z/i,
      EG: /\A([A-Z\d\s]){3,}\z/i,
      GQ: /\A([A-Z\d\s]){3,}\z/i,
      EL: /\A\d{5}\z/,
      ER: /\A([A-Z\d\s]){3,}\z/i,
      FJ: /\A([A-Z\d\s]){3,}\z/i,
      FR: /\A\d{5}\z/,
      GA: /\A\d{4}\z/,
      GD: /\A([A-Z\d\s]){3,}\z/i,
      GH: /\A([A-Z\d\s]){3,}\z/i,
      GM: /\A([A-Z\d\s]){3,}\z/i,
      GN: /\A([A-Z\d\s]){3,}\z/i,
      GI: /\A(GX11[ ]?1AA)\z/i,
      GR: /\A\d{3}[ ]?\d{2}\z/,
      GY: /\A([A-Z\d\s]){3,}\z/i,
      HN: /\A(([A-Z]){2}|\d{2})\d{4}\z/i,
      IO: /\A\d{5}\z/,
      IR: /\A\d{5}\z/,
      JP: /\A\d{3}\-?\d{4}\z/,
      # Jamaica has no postcode system.However, for Kingston, there are one- and two-digit sector codes.
      # On February 12, 2007 it was announced: "POST CODE PROJECT SUSPENDED INDEFINITELY"
      # https://en.youbianku.com/Jamaica#:~:text=Jamaica%20has%20no%20postcode%20system,the%20name%20of%20the%20town.
      JM: /\A((JM(DCN|CHR|AKN|DMR|BPD|AAW|CAN|ACE|DEH|CJS|BMY|BTS|CTY|DWD)(0[1-9]|[1-2]\d))|\d{1,2})?\z/i,
      KI: /\A(KI)\d{4}\z/i,
      KN: /\A(KN)\d{4}\z/i,
      KP: /\A([A-Z\d\s]){3,8}\z/i,
      LI: /\A\d{4}\z/,
      LV: /\A(LV[\- ]?)?\d{4}\z/i,
      LY: /\A\d{5}\z/,
      LT: /\A(LT[\- ]?)?\d{5}\z/i
      LC: /\A([A-Z\d\s]){3,}\z/i,
      MC: /\A\d{5}\z/,
      MD: /\A(([A-Z]){2})(|\s)\d{4}\z/i,
      ME: /\A([A-Z\d\s]){3,}\z/i,
      MH: /\A\d{5}\z/,
      MR: /\A([A-Z\d\s]){3,}\z/i,
      MM: /\A([A-Z\d\s]){3,}\z/i,
      MW: /\A([A-Z\d\s]){3,}\z/i,
      MZ: /\A\d{4}\z/,
      NA: /\A\d{5}\z/,
      NP: /\A\d{6}\z/,
      NR: /\A([A-Z\d\s]){3,}\z/i,
      PT: /\A\d{4}([\-]\d{3})?\z/,
      PS: /\A\d{3}\z/,
      PA: /\A\d{4}\z/,
      PE: /\A\d{5}\z/,
      QA: /\A([A-Z\d\s]){3,}\z/i,
      RW: /\A([A-Z\d\s]){3,}\z/i,
      SC: /\A([A-Z\d\s]){3,}\z/i,
      SE: /\A\d{3}[ ]?\d{2}\z/,
      SK: /\A[089]\d{2}[ ]?\d{2}\z/,
      SL: /\A([A-Z\d\s]){3,}\z/i,
      SB: /\A([A-Z\d\s]){3,}\z/i,
      SR: /\A([A-Z\d\s]){3,}\z/i,
      SO: /\A([A-Z\d\s]){3,}\z/i,
      SV: /\A([A-Z\d\s]){3,}\z/i,
      SD: /\A\d{5}\z/,
      ST: /\A([A-Z\d\s]){3,}\z/i,
      SY: /\A([A-Z\d\s]){3,}\z/i,
      SS: /\A\d{5}\z/,
      TD: /\A\d{5}\z/,
      TG: /\A([A-Z\d\s]){3,}\z/i,
      TO: /\A([A-Z\d\s]){3,}\z/i,
      TZ: /\A([A-Z\d\s]){3,}\z/i,
      TT: /\A\d{6}\z/,
      TW: /\A\d{3}(\d{2})?\z/,
      UG: /\A([A-Z\d\s]){3,}\z/i,
      UM: /\A([A-Z\d\s]){3,}\z/i,
      UY: /\A([A-Z\d\s]){3,}\z/i,
      VC: /\A(VC)\d{4}\z/i,
      VI: /\A\d{5}\z/,
      VG: /\A([A-Z\d\s]){3,}\z/i,
      VN: /\A\d{6}\z/,
      VU: /\A([A-Z\d\s]){3,}\z/i,
      WS: /\A([A-Z\d\s]){3,}\z/i,
      YE: /\A([A-Z\d\s]){3,}\z/i,
      ZW: /\A([A-Z\d\s]){3,}\z/i
    }.freeze

    def regexp_for_country_alpha2(alpha2)
      alpha2 = alpha2.to_s.upcase.to_sym

      ZIPCODES_REGEX[alpha2]
    end
  end
end
