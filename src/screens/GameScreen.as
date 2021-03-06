package screens
{	
	import data.DataManager;
	import data.MatchData;
	
	import navigation.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.DisplayObject;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.TouchEvent;
	
	import team.TeamManager;
	
	import ui.Background;
	import ui.DisplayMovieCard;
	import ui.Logo;
	
	public class GameScreen extends Sprite implements IScreen
	{
		public static const ACTION_OTHER:String="ACTION_OTHER";
		public static const ACTION_READY:String="ACTION_READY";
		public static const ACTION_PAUSE:String="ACTION_PAUSE";
		public static const ACTION_RESUME:String="ACTION_RESUME";
		public static const ACTION_GUESSED:String="ACTION_GUESSED";
		public static const ACTION_TURN_LOST:String="ACTION_TURN_LOST";
		public static const ACTION_TURN_WON:String="ACTION_TURN_WON";
		public static const ACTION_PENALTY:String = "ACTION_PENALTY";
		
		private var background:Background;
		private var logo:Logo;
		
		private var displayMovieCard:DisplayMovieCard;
		
		// Managers
		private var teamManager:TeamManager;		
		public var dataManager:DataManager = DataManager.getInstance();
		
	/*
		- check If the game is started
		- Obtain teams from Team Manager
		- Prepare turns (later, we'll separate logic game from screens)
		
	*/

		public function GameScreen()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			trace("GameCanvas screen onAddedToStage");
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		public function initialize(params:Object=null):void
		{
			teamManager = new TeamManager();
			
			// add Background
			background = new Background();
			addChild(background);
			
			// add Logo
			logo = new Logo();
			addChild(logo);			

			// add MovieCard
			displayMovieCard = new DisplayMovieCard();
			displayMovieCard.y = 80;
			displayMovieCard.onAction = onAction;
			addChild(displayMovieCard);
			
			dataManager.initialize(dataManager_onInitialize);

			this.visible = true;
		}
		
		private function dataManager_onInitialize():void
		{
			gameStart();
		}
				
		public function gameStart():void
		{
			trace("[LOG] GameScreen.gameStart()");
			displayMovieCard.getRandomMovie();
		}

		public function onAction(action:String,score:int=0):void
		{
			trace("[LOG] GameScreen.onAction", action);
			switch(action)
			{
				case ACTION_TURN_WON:
				{
					onTurnWon(score);
					break;
				}
				case ACTION_TURN_LOST:
				{
					onTurnLost();
					break;
				}
				default:
				{
					trace("[#ERROR#] GameScreen.onAction(), NO ACTION: ", action);
					break;
				}
			}			
		}
		
		public function onTurnWon(score:int):void
		{
			trace("[LOG] GameScreen.onTurnWon()");
			
			// SUM remain seconds to Score
			MatchData.updateScore(score);
				
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id: "teams"}, true));
		}
		
		public function onTurnLost():void
		{
			// SUM remain seconds to Score
			MatchData.updateScore(0);
			
			trace("[LOG] GameScreen.onTurnLost()");
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id: "teams"}, true));
		}
						
		public function disposeTemporarily():void
		{
			this.visible = false;
			logo.disposeTemporarily();
			background.disposeTemporarily();
			displayMovieCard.disposeTemporarily();
			teamManager.disposeTemporarily();
			dataManager.disposeTemporarily();

		}
		
	}
}