package embeds
{
	public class LocalizatedTexts
	{
		public static const LANG_EN:String = "EN";
		public static const LANG_ES:String = "ES";
		
		public static var lang:String = LocalizatedTexts.LANG_EN;

		public static var MENU_WELCOME_PLAY_EN:String="PLAY";
		public static var MENU_WELCOME_PLAY_ES:String="JUGAR";
		
		public static var MENU_WELCOME_TEAMS_EN:String="TEAMS";
		public static var MENU_WELCOME_TEAMS_ES:String="EQUIPOS";

		public static var MENU_WELCOME_GESTURES_EN:String="GESTURES";
		public static var MENU_WELCOME_GESTURES_ES:String="GESTOS";
		
		public static var MENU_WELCOME_RULES_EN:String="RULES";
		public static var MENU_WELCOME_RULES_ES:String="REGLAS";

		public static var MENU_WELCOME_CREDITS_EN:String="CREDITS";
		public static var MENU_WELCOME_CREDITS_ES:String="CREDITOS";
		
		public static var MENU_GAME_OTHER_EN:String="OTHER";
		public static var MENU_GAME_OTHER_ES:String="OTRA";
				
		public static var MENU_GESTURES_NEXT_EN:String="NEXT";
		public static var MENU_GESTURES_NEXT_ES:String="SIGUIENTE";
		
		public static var MENU_GESTURES_PREV_EN:String="PREVIOUS";
		public static var MENU_GESTURES_PREV_ES:String="ANTERIOR";
		
		public static var GESTURE_CONTENT1_EN:String="To act out a phrase, one usually starts by indicating what category the phrase is in, and how many words are in the phrase. From then on, the usual procedure is to act out the words one at a time (although not necessarily in the order that they appear in the phrase). In some cases, however, it may make more sense to try to act out the 'entire concept' of the phrase at once.";
		public static var GESTURE_CONTENT2_EN:String="NUMBER OF WORDS IN THE TITLE: Hold up the number of fingers.";
		public static var GESTURE_CONTENT3_EN:String="WHICH WORD YOU'RE WORKING ON: Hold up the number of fingers again.";
		public static var GESTURE_CONTENT4_EN:String="NUMBER OF SYLLABLES IN THE WORD: Lay the number of fingers on your arm.";
		public static var GESTURE_CONTENT5_EN:String="WHICH SYLLABLE YOU'RE WORKING ON: Lay the number of fingers on your arm again.";
		public static var GESTURE_CONTENT6_EN:String="LENGTH OF WORD: Make a 'little' or 'big' sign as if you were measuring a fish.";
		public static var GESTURE_CONTENT7_EN:String="THE ENTIRE CONCEPT: sweep your arms through the air.";
		public static var GESTURE_CONTENT8_EN:String="ON THE NOSE (i.e., someone has made a correct guess): point at your nose with one hand, while pointing at the person with your other hand.";
		public static var GESTURE_CONTENT9_EN:String="SOUNDS LIKE: Cup one hand behind an ear.";
		public static var GESTURE_CONTENT10_EN:String="LONGER VERSION OF: Pretend to stretch a piece of elastic.";
		public static var GESTURE_CONTENT11_EN:String="SHORTER VERSION OF: Do a 'karate chop' with your hand";
		public static var GESTURE_CONTENT12_EN:String="PLURAL: link your little fingers.";
		public static var GESTURE_CONTENT13_EN:String="PAST TENSE: wave your hand over your shoulder toward your back.";
		public static var GESTURE_CONTENT14_EN:String="A LETTER OF THE ALPHABET: move your hand in a chopping motion toward your arm (near the top of your forearm if the letter is near the beginning of the alphabet, and near the bottom of your arm if the letter is near the end of the alphabet).";
		public static var GESTURE_CONTENT15_EN:String="BOOK TITLE: Unfold your hands as if they were a book.";
		public static var GESTURE_CONTENT16_EN:String="MOVIE TITLE: Pretend to crank an old-fashioned movie camera.";
		public static var GESTURE_CONTENT17_EN:String="PLAY TITLE: Pretend to pull the rope that opens a theater curtain.";
		public static var GESTURE_CONTENT18_EN:String="SONG TITLE: Pretend to have a Mic in you hand and pretend to sing.";
		public static var GESTURE_CONTENT19_EN:String="TV SHOW: Draw a rectangle to outline the TV screen.";
		public static var GESTURE_CONTENT20_EN:String="QUOTE OR PHRASE: Make quotation marks in the air with your fingers.";
		
		
		public static var RULES_CONTENT1_EN:String="Divide the players into two teams, preferably of equal size. Divide the slips of paper between the two teams. Select a neutral timekeeper/scorekeeper, or pick members from each team to take turns. Agree on how many rounds to play. Review the gestures and hand signals and invent any others you deem appropriate.";
		public static var RULES_CONTENT2_EN:String="The teams temporarily adjourn to separate rooms, to come up with phrases to put on their pieces of paper. These phrases may either be quotations or titles of books, movies, plays, television shows, and songs. Here are some suggested rules to prevent the phrases from being too hard to guess:";
		public static var RULES_CONTENT3_EN:String="No team should write down any phrase unless at least three people on the team have heard of it;";
		public static var RULES_CONTENT4_EN:String="No phrase should be longer than seven words;";
		public static var RULES_CONTENT5_EN:String="No phrase should consist solely of a proper name (i.e., it should also contain other words);";
		public static var RULES_CONTENT6_EN:String="No foreign phrases are allowed.";
		public static var RULES_CONTENT7_EN:String="Once they have finished writing their phrases, the teams come back to the same room.";
		public static var RULES_CONTENT8_EN:String="Now that you already know the rules, start using MIMICA to improve your experience.";
		
		public static var CREDITS_CONTENT1_EN:String="Mariano Nieves / Delicia Andino";
		
		private var s:String="";
		public static function getLocalizatedTextByKey(key:String):String
		{
			var s:String = LocalizatedTexts[key+"_"+lang];
			if(s==null) 
			{
				trace("[#ERROR#] LocalizatedTexts ",key," NOT FOUND");
				return "";
			}
			return s;
		}
		
	}
}