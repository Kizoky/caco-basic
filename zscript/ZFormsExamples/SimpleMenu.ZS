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
        // First buttons in a line
        if (command == "fFirstButton")
        {
            // Change the text's colour to a random colour.
            link.fFirstButton.disabled = true;
			link.fSecondButton.disabled = false;
			link.fThirdButton.disabled = false;
        }
		
		if (command == "fSecondButton")
        {
            // Change the text's colour to a random colour.
            link.fFirstButton.disabled = false;
			link.fSecondButton.disabled = true;
			link.fThirdButton.disabled = false;
        }
		
		if (command == "fThirdButton")
        {
            // Change the text's colour to a random colour.
            link.fFirstButton.disabled = false;
			link.fSecondButton.disabled = false;
			link.fThirdButton.disabled = true;
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
    // First answers + the Question (they are next to the buttons)
	Samples_ZF_Label fQuestion;
    Samples_ZF_Label fFirstAnswer;
	Samples_ZF_Label fSecondAnswer;
	Samples_ZF_Label fThirdAnswer;
	
	
	// Third buttons
    Samples_ZF_Button tFirstButton;
	Samples_ZF_Button tSecondButton;
	Samples_ZF_Button tThirdButton;
    // Third answers + the Question
	Samples_ZF_Label tQuestion;
	Samples_ZF_Label tQuestion2;
    Samples_ZF_Label tFirstAnswer;
	Samples_ZF_Label tSecondAnswer;
	Samples_ZF_Label tThirdAnswer;
	Samples_ZF_Label tFirstAnswer2;
	Samples_ZF_Label tSecondAnswer2;
	Samples_ZF_Label tThirdAnswer2;
	
	Samples_ZF_Button ConfirmButton;
	
	int FirstCorrect;
	int fFirst;
	int fSecond;
	int sFirst, sSecond;
	
	int ThirdCorrect;
	int tFirst, tSecond;
	
	int CorrectButton;
	
	override void MenuEvent (int mkey, bool fromcontroller)
	{
		switch (mkey)
		{
			case MKEY_UP:
				break;
			case MKEY_DOWN:
				break;
			case MKEY_RIGHT:
				break;
			case MKEY_LEFT:
				break;
		}
	}
	
    override void Init (Menu parent)
    {
        // Call GenericMenu's 'Init' function to do some required initialization.
        Super.Init (parent);
        // Set our base resolution to 320x200.
        SetBaseResolution ((320, 200));
		
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
		
		// ----------------------------------------------------------------------------
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
        // Add the button element into the main frame.
        tFirstButton.Pack (mainFrame);
		
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
        // Add the button element into the main frame.
        tSecondButton.Pack (mainFrame);
		
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
        // Add the button element into the main frame.
        tThirdButton.Pack (mainFrame);
		
		// ----------------------------------------------------------------------------
        ConfirmButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. + 250.) / 2., (200. + 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "ConfirmButton"
        );
        // Set the button's textures.
        ConfirmButton.SetTexture
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
        ConfirmButton.Pack (mainFrame);

        // ----------------------------------------------------------------------------
		
		// Caco's Basics
		
		fFirst = random[ss](1,50);
		fSecond = random[sd](1,50);
		FirstCorrect = fFirst + fSecond;
		CorrectButton = random(1,3);
		
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
		switch (CorrectButton)
		{
			case 1:
				First = FirstCorrect;
				break;
			case 2:
				Second = FirstCorrect;
				break;
			case 3:
				Third = FirstCorrect;
				break;
		}
		
		// Fill out empty answers with random gibberish
		if (First == 0) First = random[sf](1,50); + random[sg](1,50);
		if (Second == 0) Second = random[sf](1,50); + random[sg](1,50);
		if (Third == 0) Third = random[sf](1,50); + random[sg](1,50);
		
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
        // Add the label element to the main frame.
        tFirstAnswer.Pack (mainFrame);
		
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
        // Add the label element to the main frame.
        tFirstAnswer2.Pack (mainFrame);
		
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
        // Add the label element to the main frame.
        tSecondAnswer.Pack (mainFrame);
		
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
        // Add the label element to the main frame.
        tSecondAnswer2.Pack (mainFrame);
		
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
        // Add the label element to the main frame.
        tThirdAnswer.Pack (mainFrame);
		
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
        // Add the label element to the main frame.
        tThirdAnswer2.Pack (mainFrame);
		
		fQuestion.Pack (mainFrame);
		tQuestion.Pack (mainFrame);
		tQuestion2.Pack (mainFrame);
    }
}
