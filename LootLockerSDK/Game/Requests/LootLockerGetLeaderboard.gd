class_name LootLockerGetLeaderboard

@export var items : Array[LeaderboardItems]

static var _resourcePath : String = LootLockerGetLeaderboard.new().get_script().get_path()

static func FromJson(responseText) -> LootLockerGetLeaderboard:
	var json = JSON.parse_string(responseText)
	json["@path"] = _resourcePath
	json["@subpath"] = ""
	return dict_to_inst(json)

func ToJson() -> String:
	var dict = inst_to_dict(self)
	dict.erase("@path")
	dict.erase("@subpath")
	return JSON.stringify(dict)
