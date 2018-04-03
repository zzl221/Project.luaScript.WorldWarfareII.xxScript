--初始化游戏所需全局参数
BuildingInfoList={
	主城="0|0|0xbb9d6e,69|-14|0x84adb6,101|3|0x4b5365,116|-4|0x66738f,66|22|0x171716,35|18|0x50565a",
	兵工厂="0|0|0x142037,7|0|0x2e466a,13|0|0x223451,30|0|0x324a6c,56|0|0x545d6a,90|0|0x707062,116|0|0x525757,116|24|0x6a5e4c",
	陆军基地="0|0|0x777879,54|6|0x394866,105|8|0xd5bf7c,150|18|0xb59b7a,93|43|0xc1aa76,22|31|0xc3a678,80|21|0xe0c883",
	空军基地="0|0|0x938b43,59|-1|0x96836e,99|-8|0x786a5c,145|-5|0x463d36,107|23|0x968675,49|22|0x335da8,19|17|0xa49f48",
	商业区="0|0|0x786449,38|2|0xc2ad8e,84|9|0x3a3d55,109|-10|0x163380,45|25|0x4d5575,9|20|0x7f6953,98|30|0x322722",
	炮塔="0|0|0xf4d783,26|-1|0x2d5e94,86|2|0x3d4a5c,124|-19|0x171d41,130|9|0x245489,82|37|0x2b69ac,54|25|0x786a5b,23|6|0xb19d84,78|51|0xa58b5d",
	补给品厂="0|0|0xdbb37a,37|4|0x0e131e,84|0|0xc1a272,120|-7|0x19498a,155|7|0x224675,119|35|0x70634e,82|59|0xcca778,43|34|0xb19669",
	铁矿="0|0|0x385996,34|0|0x3c4c6f,57|0|0x38363f,92|0|0x363138,136|0|0x2e4b7d,136|31|0x2b2b2a,104|31|0x272625",
	橡胶厂="0|0|0xc9aa74,50|-4|0x7e8072,96|-3|0x494b49,123|0|0x586062,147|7|0x292726,123|21|0x2f3b53,83|26|0x2f3f5d,23|20|0xd9af7b",
	油井="0|0|0xbaa36a,30|1|0x34312a,57|-3|0x224478,84|4|0x2c2d2a,119|4|0x655c4c,103|29|0x383429,32|17|0x23231f",
	农场="0|0|0xfad980,36|0|0x5e5e2a,72|0|0x8f8322,113|0|0x75652f,113|15|0x5e4b31,92|15|0x968021,66|15|0xa4911c,38|15|0xa89016,52|32|0xc4a963,80|32|0xaf953f",
	村庄="0|0|0x152553,32|1|0x7e858e,69|-11|0x1a191b,94|-8|0x8d7450,90|6|0x211f1d,69|21|0x343949,37|45|0x685a43",
	狙击塔="0|0|0x1f1e1e,-63|2|0xc5aa76,65|0|0x71634d,20|-25|0x7a736a,-19|-19|0xa9895f,101|-12|0x2f2b27,8|6|0x272625",
	资源区="0|0|0xbaab88,118|7|0x3f4860,137|25|0x5a5c64,112|40|0x9e845f,102|27|0x294066,80|43|0xa18e65,181|13|0x272627,183|-3|0x2b2a2c",
	港口="0|0|0x174083,-38|2|0x1d1f23,-65|6|0x3f3e3d,-105|5|0x8f8165,-142|1|0x9c7648,-180|-2|0x93846d,-130|15|0xc08022,-99|24|0xbf7a27",
	海军基地="0|0|0x655c49,31|0|0x293242,63|-3|0x584b40,99|-7|0x242627,143|-6|0x574933,178|-1|0x2d2a27,122|38|0xbb976b,87|30|0x5b4f3e,37|53|0x61574a",
	军事区="0|0|0xb49a71,36|-8|0xd3ad7e,54|-18|0xa69d81,111|-10|0x55573c,129|-7|0x302b24,98|24|0x413b33,52|27|0x373432",
}
--城市有可能被改名,故特别处理,改用以图标查找
BuildingStatusList={
	升级中="0|0|0xffffff,-7|-1|0xffffff,-34|-1|0xfdfdfd,-48|-1|0xfefefe,-65|-3|0xb9b9b9,-73|-5|0xffffff,-74|-15|0xc0c0c0,-78|9|0xcccccc,-48|0|0xffffff,-24|8|0xdbdbdb,6|-2|0xfcfcfc",
	需要条件="0|0|0xfd0000,-34|-3|0xff0000,-45|6|0xff0000,-30|12|0xe50000,-38|11|0xfe0000,-47|7|0xce0000,-7|5|0xf60000,2|9|0xff0000,-7|14|0xe80000,6|17|0xeb0000",
	可升级="0|0|0x39c900,0|3|0x38c500,0|5|0x37c200,0|8|0x37c200,0|10|0x37c200,-1|14|0x39c900,-1|17|0x39c900,-1|19|0x39c900,-1|22|0x39c900",
	资源不足="其他均搜索不到时为此",
	废墟="0|0|0xda2828,-5|-1|0xf82e2e,21|5|0xe92b2b,21|15|0xeb2b2b,33|22|0xe22a2a,37|21|0xfc2f2f,32|8|0xe12a2a,42|2|0xc82525,36|-2|0xee2c2c,-8|18|0xfc2f2f",
	安抚="0|0|0xffffff,-15|-5|0xfbfbfb,-27|-7|0xffffff,-40|1|0xffffff,-36|11|0xffffff,-13|13|0xffffff,-7|13|0xf7f7f7,8|14|0xfdfdfd,29|5|0xffffff,38|6|0xffffff",
}

Setting={
	Main={
		Interval=120,
		Runtime=0,
	},
	Skill={
		Interval=600,
	},
	Task={
		EnableAutoCompleteTask=false,
		EnableAutoProcessTask=false,
		EnableCollectEvent=false,
		EnableMailMessageHandle=false,
		EnableAutoHandleActivity=false,
	},
	--优先级,识别色
	Building={
		City={
			[1]={"主城",4,3},
			[2]={"农场",1,1},
			[3]={"铁矿",2,2},
			[4]={"橡胶厂",1,1},
			[5]={"油井",1,1},
			[6]={"兵工厂",2,-4},
			[7]={"陆军基地",2,-4},
			[8]={"炮塔",3,3},
			[9]={"商业区",-6,-6},
			[10]={"补给品厂",-6,-6},
			[11]={"空军基地",-5,-5},
		},
		Field={
			[1]={"村庄",1,1},
			[2]={"资源区",1,1},
			[3]={"none",1,1},
			--[2]={"单资源地",-2,-2},
			--[3]={"双资源地",1,1},
			[4]={"农场",1,1},
			[5]={"铁矿",2,2},
			[6]={"橡胶厂",1,1},
			[7]={"油井",1,1},
			[8]={"狙击塔",-2,-2},
			[9]={"炮塔",-2,-2},
			[10]={"军事区",-3,-3},
			[11]={"港口",-3,-3},
			[12]={"海军基地",-3,-3},
		},
		CityMainSetting={
			EnableAutoDevelop=false,
		},
		CityOtherSetting={
			EnableAutoDevelop=false,
			EnableTransportRescouseToMainCity=false,
		},
		CityIndex={},
		FieldIndex={},
	}
	
}

for k,v in ipairs(Setting.Building.City) do
	Setting.Building.CityIndex[v[1]]=k
end
for k,v in ipairs(Setting.Building.Field) do
	Setting.Building.FieldIndex[v[1]]=k
end
--可用性检测

--统计参数

--HUD显示参数
HUD={
	runing = createHUD(),			--用于显示当前状态
	resource = createHUD(),		--资源状态
}
ShowInfo={
	RunningInfo=function(info)
			sysLog("Running:"..info)
			showHUD(HUD.runing,
				info,10,"0xffffffff","0x4c000000"
				,0,_fsw*0.4,_fsh*0.05,100,20)
	end,
	ResInfo=function(info)
		sysLog("resource:"..info)
		showHUD(HUD.resource,
				info,10,"0xffffffff","0x4c000000",
				0,_fsw*0.4,_fsh*0.05+20,150,20)
	end
}