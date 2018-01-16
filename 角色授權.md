**角色名稱定義**
- 角色名稱中英文皆可
- 多重角色以分隔符號（,）作連結
	- 例：,ADM,學生,教師,職員,課務組,
- 角色名稱定義儲存於資料表中

**角色權限存取**
- 與 SSO HEADER 取得之「人員代號」與「單位代碼」比對是否符合
- 

	-public static bool IsSomeMgn(string key , string mgn)
	-{
	- if (string.IsNullOrEmpty(key) || string.IsNullOrEmpty(mgn))
	- {
	-  return false;
	- }
	- return mgn.Contains(key);
	-}

	-IsSomeMgn(",ADM," , ",ADM,學生,教師,職員,課務組,");


