class_name LootLockerLeaderboardSubmit

@export var member_id : String
@export var rank : int
@export var score : int
@export var metadata : String
@export var success : bool

static var _resourcePath : String = LootLockerLeaderboardSubmit.new().get_script().get_path()

static func FromJson(responseText) -> LootLockerLeaderboardSubmit:
	var json = JSON.parse_string(responseText)
	json["@path"] = _resourcePath
	json["@subpath"] = ""
	return dict_to_inst(json)

func ToJson() -> String:
	var dict = inst_to_dict(self)
	dict.erase("@path")
	dict.erase("@subpath")
	return JSON.stringify(dict)
