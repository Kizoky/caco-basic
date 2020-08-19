/*
 * For all god that is saint, If you can get easily offended don't look further!
 * For all god that is saint, If you can get easily offended don't look further!
 * For all god that is saint, If you can get easily offended don't look further!
 * For all god that is saint, If you can get easily offended don't look further!
 * For all god that is saint, If you can get easily offended don't look further!
*/

// The menu's command handler.
// This is needed so we can make our menu interactable.

class Samples_SimpleMenuHandler : Samples_ZF_Handler
{
    // The menu this command handler belongs to.
    // We need this to be able to do anything with our menu.
    CacoBasics_Math link;
	
    override void buttonClickCommand (Samples_ZF_Button caller, string command)
    {
        // -------------------------------------------------- First buttons in a line
        if (command == "fFirstButton")
        {
			if (link.fCorrectButton == link.fFirstButton)
				link.fFirstAnswer.textColor = Font.CR_GREEN;
			else
				link.fFirstAnswer.textColor = Font.CR_RED;
			
			link.FirstConfirm = true;
            link.fFirstButton.disabled = true;
			link.fSecondButton.disabled = true;
			link.fThirdButton.disabled = true;
        }
		if (command == "fSecondButton")
        {
			if (link.fCorrectButton == link.fSecondButton)
				link.fSecondAnswer.textColor = Font.CR_GREEN;
			else
				link.fSecondAnswer.textColor = Font.CR_RED;
			
			link.FirstConfirm = true;
            link.fFirstButton.disabled = true;
			link.fSecondButton.disabled = true;
			link.fThirdButton.disabled = true;
        }
		if (command == "fThirdButton")
        {
            if (link.fCorrectButton == link.fThirdButton)
				link.fThirdAnswer.textColor = Font.CR_GREEN;
			else
				link.fThirdAnswer.textColor = Font.CR_RED;
			
			link.FirstConfirm = true;
            link.fFirstButton.disabled = true;
			link.fSecondButton.disabled = true;
			link.fThirdButton.disabled = true;
        }
		
		// ------------------------------------------------- Second buttons in a line
		//--------------------------------------------------
		//----------------------------------------------------------------------------
		if (command == "sFirstButton")
        {
            if (link.sCorrectButton == link.sFirstButton)
				link.sFirstAnswer.textColor = Font.CR_GREEN;
			else
				link.sFirstAnswer.textColor = Font.CR_RED;
			
			link.SecondConfirm = true;
            link.sFirstButton.disabled = true;
			link.sSecondButton.disabled = true;
			link.sThirdButton.disabled = true;
        }
		if (command == "sSecondButton")
        {
            if (link.sCorrectButton == link.sSecondButton)
				link.sSecondAnswer.textColor = Font.CR_GREEN;
			else
				link.sSecondAnswer.textColor = Font.CR_RED;
			
			link.SecondConfirm = true;
            link.sFirstButton.disabled = true;
			link.sSecondButton.disabled = true;
			link.sThirdButton.disabled = true;
        }
		if (command == "sThirdButton")
        {
            if (link.sCorrectButton == link.sThirdButton)
				link.sThirdAnswer.textColor = Font.CR_GREEN;
			else
				link.sThirdAnswer.textColor = Font.CR_RED;
			
			link.SecondConfirm = true;
            link.sFirstButton.disabled = true;
			link.sSecondButton.disabled = true;
			link.sThirdButton.disabled = true;
        }
		
		// ------------------------------------------------- Third buttons in a line
		if (command == "tFirstButton")
        {
            // Change the text's colour to a random colour.
			link.ThirdConfirm = true;
            link.tFirstButton.disabled = true;
			link.tSecondButton.disabled = false;
			link.tThirdButton.disabled = false;
        }
		if (command == "tSecondButton")
        {
            // Change the text's colour to a random colour.
			link.ThirdConfirm = true;
            link.tFirstButton.disabled = false;
			link.tSecondButton.disabled = true;
			link.tThirdButton.disabled = false;
        }
		if (command == "tThirdButton")
        {
            // Change the text's colour to a random colour.
			link.ThirdConfirm = true;
            link.tFirstButton.disabled = false;
			link.tSecondButton.disabled = false;
			link.tThirdButton.disabled = true;
        }
		
		if (command == "ConfirmButton")
        {
            // Change the text's colour to a random colour.
            link.Close();
        }
    }
}

class CacoBasics_Math : Samples_ZF_GenericMenu
{
    // The menu's command handler.
    // We need a command handler so we can make our menu interactable.
    Samples_SimpleMenuHandler handler;

    // A font to use for text.
    Font smallFont;

    // A background image.
    Samples_ZF_Image background;
	
    // First buttons
    Samples_ZF_Button fFirstButton;
	Samples_ZF_Button fSecondButton;
	Samples_ZF_Button fThirdButton;
	
	Samples_ZF_Button fCorrectButton;
    // First answers + the Question (they are next to the buttons)
	Samples_ZF_Label fQuestion;
    Samples_ZF_Label fFirstAnswer;
	Samples_ZF_Label fSecondAnswer;
	Samples_ZF_Label fThirdAnswer;
	
	// Second buttons
    Samples_ZF_Button sFirstButton;
	Samples_ZF_Button sSecondButton;
	Samples_ZF_Button sThirdButton;
	
	Samples_ZF_Button sCorrectButton;
    // First answers + the Question (they are next to the buttons)
	Samples_ZF_Label sQuestion;
    Samples_ZF_Label sFirstAnswer;
	Samples_ZF_Label sSecondAnswer;
	Samples_ZF_Label sThirdAnswer;
	
	
	// Third buttons
    Samples_ZF_Button tFirstButton;
	Samples_ZF_Button tSecondButton;
	Samples_ZF_Button tThirdButton;
    // Third answers + the Question ... or whatever they are supposed to be
	Samples_ZF_Label tQuestion;
	Samples_ZF_Label tQuestion2;
    Samples_ZF_Label tFirstAnswer;
	Samples_ZF_Label tSecondAnswer;
	Samples_ZF_Label tThirdAnswer;
	Samples_ZF_Label tFirstAnswer2;
	Samples_ZF_Label tSecondAnswer2;
	Samples_ZF_Label tThirdAnswer2;
	
	Samples_ZF_Button ActiveButton;
	
	int FirstCorrect;
	int fFirst;
	int fSecond;
	int SecondCorrect;
	int sFirst, sSecond;
	
	int ThirdCorrect;
	int tFirst, tSecond;
	
	int CorrectButton;
	
	int BasicsRow, BasicsActive;
	bool BasicsConfirm;
	
	bool FirstConfirm, SecondConfirm, ThirdConfirm;
	
	bool CountdowntoClose;
	int CountdowntoClosing, Ticktack;
	
	// Please don't put me in jail
	override void BasicsKeyboard()
	{
		switch (BasicsRow)
		{
			// First Line
			case 1:
				switch (BasicsActive)
				{
					case 1:
						fFirstButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (FirstConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "fFirstButton"); 
							BasicsConfirm = false;
						}
						break;
					case 2:
						fSecondButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (FirstConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "fSecondButton"); 
							BasicsConfirm = false;
						}
						break;
					case 3:
						fThirdButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (FirstConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "fThirdButton"); 
							BasicsConfirm = false;
						}
						break;
				}
			break;
			// Second line
			case 2:
				switch (BasicsActive)
				{
					case 1:
						sFirstButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (SecondConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "sFirstButton"); 
							BasicsConfirm = false;
						}
						break;
					case 2:
						sSecondButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (SecondConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "sSecondButton"); 
							BasicsConfirm = false;
						}
						break;
					case 3:
						sThirdButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (SecondConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "sThirdButton"); 
							BasicsConfirm = false;
						}
						break;
				}
			break;
			// Third line (the corruption mess)
			case 3:
				switch (BasicsActive)
				{
					case 1:
						tFirstButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (ThirdConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "tFirstButton"); 
							BasicsConfirm = false;
						}
						break;
					case 2:
						tSecondButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (ThirdConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "tSecondButton"); 
							BasicsConfirm = false;
						}
						break;
					case 3:
						tThirdButton.curButtonState = Samples_ZF_Button.ButtonState_Hover;
						if (BasicsConfirm)
						{
							if (ThirdConfirm) { BasicsConfirm = false; return; }
							
							handler.buttonClickCommand(ActiveButton, "tThirdButton"); 
							BasicsConfirm = false;
						}
						break;
				}
			break;
		}
		
		if (FirstConfirm && SecondConfirm && ThirdConfirm)
		{
			if (!CountdowntoClose)
			{
				CountdowntoClosing = 35 * 4;
				CountdowntoClose = true;
			}
			S_ChangeMusic("");
			Ticktack += 1;
			
			if (CountdowntoClosing < Ticktack && CountdowntoClose)
				Close();
		}
		
		// Make these appear when Player answered
		if (FirstConfirm && !SecondConfirm)
		{
			sFirstButton.Pack (mainFrame);
			sSecondButton.Pack (mainFrame);
			sThirdButton.Pack (mainFrame);
			
			sFirstAnswer.Pack (mainFrame);
			sSecondAnswer.Pack (mainFrame);
			sThirdAnswer.Pack (mainFrame);
			
			sQuestion.Pack (mainFrame);
		}
		
		if (SecondConfirm)
		{
			tFirstButton.Pack (mainFrame);
			tSecondButton.Pack (mainFrame);
			tThirdButton.Pack (mainFrame);
			
			tFirstAnswer.Pack (mainFrame);
			tFirstAnswer2.Pack (mainFrame);
			
			tSecondAnswer.Pack (mainFrame);
			tSecondAnswer2.Pack (mainFrame);
			
			tThirdAnswer.Pack (mainFrame);
			tThirdAnswer2.Pack (mainFrame);
			
			tQuestion.Pack (mainFrame);
			tQuestion2.Pack (mainFrame);
		
		}
		
		//Console.Printf("Row: %d | Active: %d", BasicsRow, BasicsActive);
		
		Super.BasicsKeyboard();
	
	}
	
	// Note: BasicsRow and BasicsActive are 0 by default
	// Therefore they won't highlight any buttons by default, unless they start pushing any movement buttons
	override bool MenuEvent (int mkey, bool fromcontroller)
	{	
		if (mkey == MKEY_UP)
		{
			if (BasicsRow == 1)
				return Super.MenuEvent(mkey, fromcontroller);
			
			if (BasicsRow > 1)
				BasicsRow -= 1;
			else
				BasicsRow += 1;
		}
		
		if (mkey == MKEY_DOWN)
		{
			if (BasicsRow == 3)
				return Super.MenuEvent(mkey, fromcontroller);
			
			BasicsRow += 1;
		}
		
		if (mkey == MKEY_RIGHT)
		{
			if (BasicsActive == 3)
				return Super.MenuEvent(mkey, fromcontroller);
			
			BasicsActive += 1;
		}
		
		if (mkey == MKEY_LEFT)
		{
			if (BasicsActive == 1)
				return Super.MenuEvent(mkey, fromcontroller);
			
			if (BasicsActive > 1)
				BasicsActive -= 1;
			else
				BasicsActive += 1;
		}
		
		if (mkey == MKEY_ENTER)
		{
			ActiveButton = fFirstButton;
			BasicsConfirm = true;
		}
		
		return true;
	}
	
    override void Init (Menu parent)
    {
        // Call GenericMenu's 'Init' function to do some required initialization.
        Super.Init (parent);
        // Set our base resolution to 320x200.
        SetBaseResolution ((320, 200));
		//let player = players [consoleplayer].mo;
		//if (player)
			//player.SetMusic("D_MATH");
		S_ChangeMusic("D_MATH");
		
		//BasicsRow = 0;
		//BasicsActive = 0;
		
        // Get GZDoom's new options menu smallfont.
        smallFont = OptionFont ();

        // Create an instance of the handler.
        handler = new ('Samples_SimpleMenuHandler');
        // Set the handler's "link" pointer to us.
        handler.link = self;

        // Add a background.
        background = new ('Samples_ZF_Image').Init
        (
            // Position
            (0, 0),
            // Size
            (320, 200),
            // Image path/name
            "graphics/ZFormsExamples/Panel.png",
            // Alignment options
            Samples_ZF_Image.AlignType_TopLeft
        );
        // Add the image element into the main frame.
        background.Pack (mainFrame);

        // ----------------------------------------------------------------------------
        fFirstButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 270.) / 2., (200. - 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "fFirstButton"
        );
        // Set the button's textures.
        fFirstButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
        // Add the button element into the main frame.
        fFirstButton.Pack (mainFrame);
		
		// ----------------------------------------------------------------------------
        fSecondButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 125.) / 2., (200. - 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "fSecondButton"
        );
        // Set the button's textures.
        fSecondButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
        // Add the button element into the main frame.
        fSecondButton.Pack (mainFrame);
		
		// ----------------------------------------------------------------------------
        fThirdButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. + 20.) / 2., (200. - 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "fThirdButton"
        );
        // Set the button's textures.
        fThirdButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
        // Add the button element into the main frame.
        fThirdButton.Pack (mainFrame);
		
		// Caco's Basics
		
		fFirst = random[ss](1,50);
		fSecond = random[sd](1,50);
		
		fQuestion = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,15),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("What is %d + %d ?",fFirst, fSecond),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        fQuestion.box.pos.X = 85;
		
		// ----------------------------------------------------------------------------
		
		int First, Second, Third;
		CorrectButton = random(1,3);
		FirstCorrect = fFirst + fSecond;
		switch (CorrectButton)
		{
			case 1:
				First = FirstCorrect;
				fCorrectButton = fFirstButton;
				Second = 0;
				Third = 0;
				break;
			case 2:
				Second = FirstCorrect;
				fCorrectButton = fSecondButton;
				Third = 0;
				First = 0;
				break;
			case 3:
				Third = FirstCorrect;
				fCorrectButton = fThirdButton;
				First = 0;
				Second = 0;
				break;
		}
		
		// Fill out empty answers with random gibberish
		if (First == 0) First = random[sf](1,30); + random[sg](1,40);
		if (Second == 0) Second = random[sf](1,20); + random[sg](1,60);
		if (Third == 0) Third = random[sf](1,40); + random[sg](1,70);
		
		// Because sometimes the RNG isn't that great.. In fact they can generate the same number as
		// the correct answer, which is funny as hell when you can't tell which button is right
		bool AddorRemove = random[rm](0,1);
		
		if (First == FirstCorrect && CorrectButton != 1)
		{
			if (AddorRemove)
				First += frandom[aor](1,4);
			else
				First -= frandom[aor](1,4);
		}
		AddorRemove = random[rm](0,1);
		if (Second == FirstCorrect && CorrectButton != 2)
		{
			if (AddorRemove)
				Second += frandom[aor](1,4);
			else
				Second -= frandom[aor](1,4);
		}
		AddorRemove = random[rm](0,1);
		if (Third == FirstCorrect && CorrectButton != 3)
		{
			if (AddorRemove)
				Third += frandom[aor](1,4);
			else
				Third -= frandom[aor](1,4);
		}
		
        fFirstAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0, 38),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",First),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        fFirstAnswer.box.pos.X = 50;
        // Add the label element to the main frame.
        fFirstAnswer.Pack (mainFrame);
		
		// ----------------------------------------------------------------------------
		fSecondAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,38),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",Second),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        fSecondAnswer.box.pos.X = 125;
        // Add the label element to the main frame.
        fSecondAnswer.Pack (mainFrame);
		
		// ----------------------------------------------------------------------------
		fThirdAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,38),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",Third),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        fThirdAnswer.box.pos.X = 200;
        // Add the label element to the main frame.
        fThirdAnswer.Pack (mainFrame);
		
		fQuestion.Pack (mainFrame);
		
		// ==========================================================================================
		// ==========================================================================================
		// ==========================================================================================
		
		sFirstButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 270.) / 2., (200. - 0.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "sFirstButton"
        );
        // Set the button's textures.
        sFirstButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
		
		// ----------------------------------------------------------------------------
        sSecondButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 125.) / 2., (200. - 0.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "sSecondButton"
        );
        // Set the button's textures.
        sSecondButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
		
		// ----------------------------------------------------------------------------
        sThirdButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. + 20.) / 2., (200. - 0.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "sThirdButton"
        );
        // Set the button's textures.
        sThirdButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
		
		// ------------------------------------------------------------- Second Answers and Question
		
		sFirst = random[ssr](1,50);
		sSecond = random[sdt](1,50);
		SecondCorrect = sFirst + sSecond;
		CorrectButton = random[crctbtn](1,3);
		
		sQuestion = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,77),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("What is %d + %d ? debug: %d  ",sFirst, sSecond, SecondCorrect),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        sQuestion.box.pos.X = 85;
		
		switch (CorrectButton)
		{
			case 1:
				First = SecondCorrect;
				sCorrectButton = sFirstButton;
				Second = 0;
				Third = 0;
				break;
			case 2:
				Second = SecondCorrect;
				sCorrectButton = sSecondButton;
				First = 0;
				Third = 0;
				break;
			case 3:
				Third = SecondCorrect;
				sCorrectButton = sThirdButton;
				First = 0;
				Second = 0;
				break;
		}
		
		if (First == 0) First = random[sfrr](1,60); + random[sgl](1,40);
		if (Second == 0) Second = random[sftt](1,30); + random[sgr](1,70);
		if (Third == 0) Third = random[sfzz](1,70); + random[sgt](1,20);
		
		// Because sometimes the RNG isn't that great.. In fact they can generate the same number as
		// the correct answer, which is funny as hell when you can't tell which button is right
		AddorRemove = random[rm](0,1);
		
		if (First == SecondCorrect && CorrectButton != 1)
		{
			if (AddorRemove)
				First += frandom[aor](1,4);
			else
				First -= frandom[aor](1,4);
		}
		AddorRemove = random[rm](0,1);
		if (Second == SecondCorrect && CorrectButton != 2)
		{
			if (AddorRemove)
				Second += frandom[aor](1,4);
			else
				Second -= frandom[aor](1,4);
		}
		AddorRemove = random[rm](0,1);
		if (Third == SecondCorrect && CorrectButton != 3)
		{
			if (AddorRemove)
				Third += frandom[aor](1,4);
			else
				Third -= frandom[aor](1,4);
		}
		
		sFirstAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0, 100),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",First),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        sFirstAnswer.box.pos.X = 50;
		
		// ----------------------------------------------------------------------------
		sSecondAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,100),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",Second),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        sSecondAnswer.box.pos.X = 125;
		
		// ----------------------------------------------------------------------------
		sThirdAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,100),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",Third),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        sThirdAnswer.box.pos.X = 200;
		
		// ================================================================================================
		// ================================================================================================
		// ================================================================================================
        tFirstButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 270.) / 2., (200. + 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "tFirstButton"
        );
        // Set the button's textures.
        tFirstButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
		
		// ----------------------------------------------------------------------------
        tSecondButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 125.) / 2., (200. + 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "tSecondButton"
        );
        // Set the button's textures.
        tSecondButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
		
		// ----------------------------------------------------------------------------
        tThirdButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. + 20.) / 2., (200. + 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "tThirdButton"
        );
        // Set the button's textures.
        tThirdButton.SetTexture
        (
            // Idle/inactive
            "graphics/ZFormsExamples/SmallButtonIdle.png",
            // Hovered
            "graphics/ZFormsExamples/SmallButtonHovered.png",
            // Clicked/pressed
            "graphics/ZFormsExamples/SmallButtonClicked.png",
            // Disabled
            "graphics/ZFormsExamples/SmallButtonDisabled.png"
        );
		
		// ------------------------------ Third Answers and Question
		
		static const string ThirdList[] =
		{
			"KvZPAm6YSF3htJ3kyP4R",
			"KlW3svMtaCPSUBjMojzX",
			"FoftZSNaFyvpsBoBaoBy",
			"TSW9vSlUL02zldlP1FlB",
			"z8Z1HNTk9dK5Z1oiePtM",
			"CpyesrA3TDfm8G7bpTWE",
			"ewjRPfXge6o4XRs9Z52e",
			"IIyMenccxAXujzAylbCa",
			"HBvYEFQCklFQEn1jytzf",
			"HXTBGsxqPofQTc4k40o6"
		};
		
		int i = random[rancorrupt](0,ThirdList.Size()-1);
		tQuestion = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,140),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("What is %s", ThirdList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tQuestion.box.pos.X = 85;
		
		i = random[rancorrupt](0,ThirdList.Size()-1);
		tQuestion2 = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,139),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("ofQTc4k4%s", ThirdList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tQuestion2.box.pos.X = 90;
		
		static const string CorruptedList[] =
		{
			",",
			".,m.",
			"á",
			"nul",
			".exe",
			"VM",
			";;;",
			"eror",
			" . . .",
			"xcyvb",
			"€$ß",
			"rm -rf",
			"del",
			"excxx",
			"gzdum",
			"help",
			"? ?",
			"iddqd"
		};
		
		i = random[rancorrupt](0,CorruptedList.Size()-1);
		tFirstAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0, 163),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%s ",CorruptedList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tFirstAnswer.box.pos.X = 50;
		
		i = random[rancorrupt](0,CorruptedList.Size()-1);
		tFirstAnswer2 = new ('Samples_ZF_Label').Init
        (
            // Position
            (0, 162),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%s ",CorruptedList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tFirstAnswer2.box.pos.X = 51;
		
		// ----------------------------------------------------------------------------
		i = random[rancorruptt](0,CorruptedList.Size()-1);
		tSecondAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,163),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%s ",CorruptedList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tSecondAnswer.box.pos.X = 125;
		
		i = random[rancorruptt](0,CorruptedList.Size()-1);
		tSecondAnswer2 = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,162),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%s ",CorruptedList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tSecondAnswer2.box.pos.X = 126;
		
		// ----------------------------------------------------------------------------
		i = random[rancorrupttt](0,CorruptedList.Size()-1);
		tThirdAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,163),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%s ",CorruptedList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tThirdAnswer.box.pos.X = 200;
		
		i = random[rancorrupttt](0,CorruptedList.Size()-1);
		tThirdAnswer2 = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,162),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%s ",CorruptedList[i]),
            // The font to use
            fnt: smallFont,
            // Whether to automatically wrap the text or not
            wrap: false,
            // Whether to automatically resize the element based on the text width
            autoSize: true,
            // The text's colour
            textColor: Font.CR_WHITE
        );
        // Calculate the horizontal position for the label so that it's centered on the screen.
        tThirdAnswer2.box.pos.X = 201;
    }
}
