package navigation
{
	
	import screens.SettingsScreen;
	import screens.GameScreen;
	import screens.GesturesScreen;
	import screens.IScreen;
	import screens.RulesScreen;
	import screens.TeamsScreen;
	import screens.WelcomeScreen;
	
	import starling.display.Sprite;

	public class NavigationManager
	{
		
		private var stage:Sprite;
		
		private var currentScreen:IScreen;
		
		private var screenWelcome:WelcomeScreen;
		private var screenInGame:GameScreen;
		private var screenTeams:TeamsScreen;
		private var screenGestures:GesturesScreen;
		private var screenRules:RulesScreen;
		private var screenSettings:SettingsScreen;
		
		public static const ACTION_NAVIGATE_PLAY:String="ACTION_NAVIGATE_PLAY";
		public static const ACTION_NAVIGATE_TEAMS:String="ACTION_NAVIGATE_TEAMS";
		public static const ACTION_NAVIGATE_GESTURES:String="ACTION_NAVIGATE_GESTURES";
		public static const ACTION_NAVIGATE_RULES:String="ACTION_NAVIGATE_RULES";
		public static const ACTION_NAVIGATE_SETTINGS:String="ACTION_NAVIGATE_SETTINGS";
		
		public function NavigationManager()
		{
		}
		
		public function initialize(baseStage:Sprite):void
		{
			this.stage = baseStage;

			screenInGame = new GameScreen();
			this.stage.addChild(screenInGame);
			
			screenWelcome = new WelcomeScreen();
			this.stage.addChild(screenWelcome);
			
			screenTeams = new TeamsScreen();
			this.stage.addChild(screenTeams);
			
			screenGestures = new GesturesScreen();
			this.stage.addChild(screenGestures);
			
			screenRules = new RulesScreen();
			this.stage.addChild(screenRules);
			
			screenSettings = new SettingsScreen();
			this.stage.addChild(screenSettings);
			
		}
		
		private function swapCurrentScreen(newScreen:IScreen,params:*=null):void
		{
			if( currentScreen ) currentScreen.disposeTemporarily();
			currentScreen = newScreen;
			currentScreen.initialize(params);
		}
		
		public function onChangeScreen(event:NavigationEvent):void
		{
			trace("NavigationManager > event.params.id:" + event.params.id)
			
			switch (event.params.id)
			{
				case "welcome":
					swapCurrentScreen(screenWelcome);
					break;
				case "play":
					swapCurrentScreen(screenInGame,{game:event.params.game});
					break;
				case "teams":
					swapCurrentScreen(screenTeams);
					break;
				case "gestures":
					swapCurrentScreen(screenGestures);
					break;
				case "rules":
					swapCurrentScreen(screenRules);
					break;
				case "settings":
					swapCurrentScreen(screenSettings);
					break;
			}
		}
		
		
	}
}