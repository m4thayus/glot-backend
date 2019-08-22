# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Text.destroy_all
Translation.destroy_all
Language.destroy_all
Vote.destroy_all
KnownLanguage.destroy_all
Difficulty.destroy_all

flag_kr = '기(旗, flag) 또는 깃발(문화어: 기발), 여괴(旟旝)는 직물 조각에 특유의 도안을 인쇄한 것 또는 그 도안으로, 상징물, 신호, 장식, 광고 등의 목적으로 사용된다. 기에 관한 연구를 기학이라고 한다. 기를 구분할 수 있는 기준은 사용 목적, 도안, 게양 방식 등이 있다. 기는 오랫동안 군사 목적으로도 사용되었으며, 때문에 기를 의미하는 표현이 군사 편제에 남아있는 경우가 많다. 아랍어에서 "기"를 의미하는 لواء는 여단과 같은 의미이고, 에스파냐어 "반데라"(bandera)는 대대와 같은 의미이다. 유목민족의 경우 몽골에서 "정기"를 정치 및 군사 단위로 사용했고, 만주족은 기를 의미하는 8개의 "구사"(ᡤᡡᠰᠠ)를 군사 및 행정, 부족 단위로 사용했다(팔기군).'
flag_en = 'A flag is a piece of fabric (most often rectangular or quadrilateral) with a distinctive design and colours. It is used as a symbol, a signalling device, or for decoration. The term flag is also used to refer to the graphic design employed, and flags have evolved into a general tool for rudimentary signalling and identification, especially in environments where communication is challenging (such as the maritime environment, where semaphore is used). The study of flags is known as "vexillology" from the Latin vexillum, meaning "flag" or "banner". National flags are patriotic symbols with widely varied interpretations that often include strong military associations because of their original and ongoing use for that purpose. Flags are also used in messaging, advertising, or for decorative purposes. Some military units are called "flags" after their use of flags. A flag (Arabic: لواء) is equivalent to a brigade in Arab countries. In Spain, a flag (Spanish: bandera) is a battalion-equivalent in the Spanish Legion. '

solar_kr = "일식(日蝕/日食, 문화어: 해가림, 영어: solar eclipse 솔라 이클립스[*])은 달이 태양의 전부 또는 일부를 가리는 천문현상을 말한다. 지구 표면에서 볼 때의 태양과 달의 시직경이 비슷하고, 지구가 태양 주위를 도는 궤도면(황도)과 달이 지구 주위를 도는 궤도면(백도)이 거의 일치하여 달이 지구 주위를 돌면서 태양의 앞쪽으로 지나 태양을 가리는 경우가 생기는데, 이 때를 일식이라고 한다. 태양이 달에 완전히 가리면 개기일식(皆旣日蝕), 일부만을 가리면 부분일식(部分日蝕), 해와 달이 겹쳐졌으나 달이 해를 전부 가리지 못해서 반지 모양으로 가려지면 금환식(金環蝕) 또는 금환일식이라 한다. 일식은 태양과 달이 합을 이루는 초하룻날에 볼 수 있지만, 매달 일어나지는 않는다. 달의 궤도는 지구가 태양을 도는(또는 지구에서 볼 때 태양이 지구를 도는) 천구상의 궤도인 황도와 달이 지구를 도는 궤도인 백도는 5도 이상 기울어져 있어서, 달이 드리우는 그림자는 종종 지구를 빗겨 간다. 또한, 달은 타원의 궤도를 돎으로 지구에서 멀어졌을 때 달의 시직경이 태양을 전부 가리지 못할 정도로 작아질 수 있다. 일식은 매년 최소 2회에서 5회까지 발생하며, 그중 개기일식은 2회를 넘지 않는다. 그러나, 지구상의 한 지역에서의 개기일식은 드문데, 이는 일식이 지표면 위로 달의 그림자 또는 본그림자가 지나는 좁은 길을 따라 일어나기 때문이다. 일식은 자연적인 현상이지만 일부 고대나 근대 문화에서는 초자연적 원인에 의해 일어나거나 불길한 징조로 여겨지기도 했다. 천문학적인 이해가 없는 사람들에는 대낮에 해가 사라지는 것처럼 보였기에 두려워할 수 있었다. 일식 때 태양을 직접 바라보는 것은 눈에 영구적인 손상을 줄 수 있으므로, 일식 관측에는 특별한 보호 장비(태양 안경 등)나 간접적으로 관측하는 기술이 사용된다. 개기일식에서 완전히 가려진 태양만을 보는 것은 기술적으로는 안전하지만, 대부분의 사람들은 일식의 상태를 식별하는 데 익숙하지 않기에 위험이 있다. 고정된 장소에서 그러한 상태는 2시간여의 총 시간 동안 최고 7.5분 동안만 지속된다. 먼 곳까지 예상된 일식을 관측하기 위해 여행하는 사람들에는 '일식 추적자'(eclipse chasers) 또는 '반그림자 애호가'(umbraphiles)라는 명칭이 붙어 있다."
solar_en = "A solar eclipse occurs when a portion of the Earth is engulfed in a shadow cast by the Moon which fully or partially blocks (occults) sunlight. This occurs when the Sun, Moon and Earth are aligned. Such alignment coincides with a new moon (syzygy) indicating the Moon is closest to the ecliptic plane. In a total eclipse, the disk of the Sun is fully obscured by the Moon. In partial and annular eclipses, only part of the Sun is obscured. If the Moon were in a perfectly circular orbit, a little closer to the Earth, and in the same orbital plane, there would be total solar eclipses every new moon. However, since the Moon's orbit is tilted at more than 5 degrees to the Earth's orbit around the Sun, its shadow usually misses Earth. A solar eclipse can only occur when the moon is close enough to the ecliptic plane during a new moon. Special conditions must occur for the two events to coincide because the Moon's orbit crosses the ecliptic at its orbital nodes twice every draconic month (27.212220 days) while a new moon occurs one every synodic month (29.530587981 days). Solar (and lunar) eclipses therefore happen only during eclipse seasons resulting in at least two, and up to five, solar eclipses each year; no more than two of which can be total eclipses. Total eclipses are rare because the timing of the new moon within the eclipse season needs to be more exact for an alignment between the observer (on Earth) and the centers of the Sun and Moon. In addition, the elliptical orbit of the Moon often takes it far enough away from Earth that its apparent size is not large enough to block the Sun entirely. Total solar eclipses are rare at any particular location because totality exists only along a narrow path on the Earth's surface traced by the Moon's full shadow or umbra. An eclipse is a natural phenomenon. However, in some ancient and modern cultures, solar eclipses were attributed to supernatural causes or regarded as bad omens. A total solar eclipse can be frightening to people who are unaware of its astronomical explanation, as the Sun seems to disappear during the day and the sky darkens in a matter of minutes. Since looking directly at the Sun can lead to permanent eye damage or blindness, special eye protection or indirect viewing techniques are used when viewing a solar eclipse. It is technically safe to view only the total phase of a total solar eclipse with the unaided eye and without protection; however, this is a dangerous practice, as most people are not trained to recognize the phases of an eclipse, which can span over two hours while the total phase can only last a maximum of 7.5 minutes for any one location. People referred to as eclipse chasers or umbraphiles will travel to remote locations to observe or witness predicted central solar eclipses."

matt = User.create(username: "m4thayus", password: "password", first_name: "Matt", last_name: "Williams")
seong = User.create(username: "seong", password: "password",  first_name: "성준", last_name: "신")
mina = User.create(username: "mina", password: "password",  first_name: "민아", last_name: "박")

en = Language.create(name: "English", short_name: "EN")
kr = Language.create(name: "한국어", short_name: "한")

basic = Difficulty.create(level: 2, description: "Basic")
intermediate = Difficulty.create(level: 4, description: "Intermediate")
advanced = Difficulty.create(level: 6, description: "Advanced")

m_lang_en_bas = KnownLanguage.create(user_id: matt.id, difficulty_id: basic.id, language_id: en.id, vetted: true)
m_lang_en_int = KnownLanguage.create(user_id: matt.id, difficulty_id: intermediate.id, language_id: en.id, vetted: true)
m_lang_en_adv = KnownLanguage.create(user_id: matt.id, difficulty_id: advanced.id, language_id: en.id, vetted: true)
m_lang_kr_bas = KnownLanguage.create(user_id: matt.id, difficulty_id: basic.id, language_id: kr.id, vetted: true)
m_lang_kr_int = KnownLanguage.create(user_id: matt.id, difficulty_id: intermediate.id, language_id: kr.id, vetted: true)

s_lang_kr_bas = KnownLanguage.create(user_id: seong.id, difficulty_id: basic.id, language_id: kr.id, vetted: true)
s_lang_kr_int = KnownLanguage.create(user_id: seong.id, difficulty_id: intermediate.id, language_id: kr.id, vetted: true)

mi_lang_en_bas = KnownLanguage.create(user_id: mina.id, difficulty_id: basic.id, language_id: en.id, vetted: true)
mi_lang_en_int = KnownLanguage.create(user_id: mina.id, difficulty_id: intermediate.id, language_id: en.id, vetted: true)
mi_lang_en_adv = KnownLanguage.create(user_id: mina.id, difficulty_id: advanced.id, language_id: en.id, vetted: true)
mi_lang_kr_bas = KnownLanguage.create(user_id: mina.id, difficulty_id: basic.id, language_id: kr.id, vetted: true)
mi_lang_kr_int = KnownLanguage.create(user_id: mina.id, difficulty_id: intermediate.id, language_id: kr.id, vetted: true)
mi_lang_kr_adv = KnownLanguage.create(user_id: mina.id, difficulty_id: advanced.id, language_id: kr.id, vetted: true)

flag_text = Text.create(
    title: "기", 
    content: flag_kr, 
    status: "pending", 
    pay: 10, 
    creator_id: seong.id, 
    difficulty_id: intermediate.id,
    source_language_id: kr.id,
    target_language_id: en.id
)

flag_translation = Translation.create(
    title: "Flag",
    content: flag_en,
    status: "pending",
    translator_id: matt.id,
    text_id: flag_text.id
)

solar_text = Text.create(
    title: "Solar Eclipse", 
    content: solar_en, 
    status: "pending", 
    pay: 50, 
    creator_id: seong.id, 
    difficulty_id: intermediate.id,
    source_language_id: en.id,
    target_language_id: kr.id
)

solar_translation = Translation.create(
    title: "일식",
    content: solar_kr,
    status: "pending",
    translator_id: mina.id,
    text_id: solar_text.id
)



# flag_vote1 = Vote.create(up: true, user_id: mina.id, translation_id: flag_translation.id)