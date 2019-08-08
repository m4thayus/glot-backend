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

matt = User.create(username: "m4thayus", first_name: "Matt", last_name: "Williams")
seong = User.create(username: "seong", first_name: "성준", last_name: "신")
mina = User.create(username: "mina", first_name: "민아", last_name: "박")

en = Language.create(name: "English", short_name: "EN")
kr = Language.create(name: "한국어", short_name: "한")

intermediate = Difficulty.create(level: 5, description: "Intermediate")

m_lang_en = KnownLanguage.create(user_id: matt.id, difficulty_id: intermediate.id, language_id: en.id, vetted: true)
m_lang_kr = KnownLanguage.create(user_id: matt.id, difficulty_id: intermediate.id, language_id: kr.id, vetted: false)

s_lang_kr = KnownLanguage.create(user_id: seong.id, difficulty_id: intermediate.id, language_id: kr.id, vetted: true)

mi_lang_en = KnownLanguage.create(user_id: mina.id, difficulty_id: intermediate.id, language_id: en.id, vetted: true)
mi_lang_kr = KnownLanguage.create(user_id: mina.id, difficulty_id: intermediate.id, language_id: kr.id, vetted: true)

flag_text = Text.create(
    title: "기", 
    content: flag_kr, 
    status: "complete", 
    pay: 10, 
    creator_id: seong.id, 
    difficulty_id: intermediate.id,
    source_language_id: kr.id,
    target_language_id: en.id
)

flag_translation = Translation.create(
    title: "Flag",
    content: flag_en,
    status: "approved",
    translator_id: matt.id,
    text_id: flag_text.id
)

flag_vote1 = Vote.create(up: true, user_id: mina.id, translation_id: flag_translation.id)