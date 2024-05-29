import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byText('en_us') +

      {
        "en_US": "Nepal Info",
        "hi_IN": "नेपाल जानकारी",
        "es_ES": "Información de Nepal",
        "ja_JP": "ネパール情報",
        "pt_PT": "Informações do Nepal",
      } +
      {
        "en_US": "Nepal",
        "hi_IN": "नेपाल",
        "es_ES": "Nepal",
        "ja_JP": "ネパール",
        "pt_PT": "Nepal",
      } +
      {
        "en_US":
            "Nepal is a landlocked country located in South Asia. It is bordered by China to the north and India to the south, east, and west. Nepal is known for its diverse geography, including the Himalayan mountain range, which contains eight of the world's ten highest peaks, including Mount Everest, the highest point on Earth.",
        "hi_IN":
            "नेपाल दक्षिण एशिया में स्थित एक भू-आबद्ध देश है। यह उत्तर में चीन और दक्षिण, पूर्व और पश्चिम में भारत से घिरा हुआ है। नेपाल अपनी विविध भौगोलिकता के लिए जाना जाता है, जिसमें हिमालय पर्वत श्रृंखला शामिल है, जिसमें दुनिया की दस सबसे ऊंची चोटियों में से आठ शामिल हैं, जिसमें पृथ्वी का सबसे ऊंचा बिंदु माउंट एवरेस्ट भी शामिल है।",
        "es_ES":
            "Nepal es un país sin salida al mar ubicado en el sur de Asia. Limita con China al norte y con India al sur, este y oeste. Nepal es conocido por su geografía diversa, que incluye la cordillera del Himalaya, que contiene ocho de los diez picos más altos del mundo, incluido el Monte Everest, el punto más alto de la Tierra.",
        "ja_JP":
            "ネパールは南アジアに位置する内陸国です。北は中国、南、東、西はインドと接しています。ネパールは多様な地理で知られており、世界の10の最高峰のうち8つを含むヒマラヤ山脈があります。その中には地球上で最も高い地点であるエベレスト山も含まれています。",
        "pt_PT":
            "O Nepal é um país sem litoral localizado no sul da Ásia. Faz fronteira com a China ao norte e com a Índia ao sul, leste e oeste. O Nepal é conhecido por sua geografia diversificada, incluindo a cordilheira do Himalaia, que contém oito dos dez picos mais altos do mundo, incluindo o Monte Everest, o ponto mais alto da Terra.",
      } +
      {
        "en_US": "Facts about Nepal",
        "hi_HI": "नेपाल के बारे में तथ्य",
        "es_ES": "Datos sobre Nepal",
        "ja_JP": "ネパールについての事実",
        "pt_PT": "Fatos sobre o Nepal",
      } +
      {
        "en_US":
            "1. Capital: Kathmandu\n2. Population: Approximately 30 million\n3. Official Language: Nepali\n4. Currency: Nepalese Rupee (NPR)\n5. Major Religion: Hinduism\n6. Famous for: Mount Everest, Lumbini (birthplace of Buddha)",
        "hi_IN":
            "1. राजधानी: काठमांडू\n2. जनसंख्या: लगभग 30 मिलियन\n3. आधिकारिक भाषा: नेपाली\n4. मुद्रा: नेपाली रुपया (NPR)\n5. प्रमुख धर्म: हिंदू धर्म\n6. प्रसिद्ध: माउंट एवरेस्ट, लुम्बिनी (बुद्ध का जन्मस्थान)",
        "es_ES":
            "1. Capital: Katmandú\n2. Población: Aproximadamente 30 millones\n3. Idioma oficial: nepalí\n4. Moneda: Rupia nepalí (NPR)\n5. Religión principal: Hinduismo\n6. Famoso por: Monte Everest, Lumbini (lugar de nacimiento de Buda)",
        "ja_JP":
            "1. 首都: カトマンズ\n2. 人口: 約3000万人\n3. 公用語: ネパール語\n4. 通貨: ネパールルピー（NPR）\n5. 主要宗教: ヒンドゥー教\n6. 有名: エベレスト山、ルンビニ（仏陀の生誕地）",
        "pt_PT":
            "1. Capital: Catmandu\n2. População: Aproximadamente 30 milhões\n3. Idioma oficial: Nepali\n4. Moeda: Rúpia nepalesa (NPR)\n5. Principal religião: Hinduísmo\n6. Famoso por: Monte Everest, Lumbini (local de nascimento de Buda)",
      };

  String get i18n => localize(this, _t);
}
