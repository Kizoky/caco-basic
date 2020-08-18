/*
 * SimpleMenu.ZS:
 * This example shows how to make a simple menu with a background, a text label,
 * and a single-texture button.
 * Clicking the button changes the colour of the text label's text to a random
 * colour.
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
        // If the command is "aButton"...
        if (command == "FirstButton")
        {
            // Change the text's colour to a random colour.
            link.FirstButton.disabled = true;
			link.SecondButton.disabled = false;
			link.ThirdButton.disabled = false;
        }
		
		if (command == "SecondButton")
        {
            // Change the text's colour to a random colour.
            link.FirstButton.disabled = false;
			link.SecondButton.disabled = true;
			link.ThirdButton.disabled = false;
        }
		
		if (command == "ThirdButton")
        {
            // Change the text's colour to a random colour.
            link.FirstButton.disabled = false;
			link.SecondButton.disabled = false;
			link.ThirdButton.disabled = true;
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
    // A simple single-texture button.
    Samples_ZF_Button FirstButton;
	Samples_ZF_Button SecondButton;
	Samples_ZF_Button ThirdButton;
	Samples_ZF_Button ConfirmButton;
    // A text label.
	Samples_ZF_Label Question;
    Samples_ZF_Label FirstAnswer;
	Samples_ZF_Label SecondAnswer;
	Samples_ZF_Label ThirdAnswer;

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

        // Add a button.
        FirstButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 270.) / 2., (200. + 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "FirstButton"
        );
        // Set the button's textures.
        FirstButton.SetTexture
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
        FirstButton.Pack (mainFrame);
		
		// Add a button.
        SecondButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. - 125.) / 2., (200. + 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "SecondButton"
        );
        // Set the button's textures.
        SecondButton.SetTexture
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
        SecondButton.Pack (mainFrame);
		
		// Add a button.
        ThirdButton = new ('Samples_ZF_Button').Init
        (
            // Position
            ((320. + 20.) / 2., (200. + 125.) / 2. ),
            // Size
            (18, 18),
            // Our command handler
            cmdHandler: handler,
            // A command string for the button
            command: "ThirdButton"
        );
        // Set the button's textures.
        ThirdButton.SetTexture
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
        ThirdButton.Pack (mainFrame);

        // Add a label.
		Question = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,15),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("What is %d + %d ?",random[ss](1,10), random[sd](1,10)),
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
        Question.box.pos.X = 85;
		
        FirstAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,163),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: "5 ",
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
        FirstAnswer.box.pos.X = 50;
        // Add the label element to the main frame.
        FirstAnswer.Pack (mainFrame);
		
		SecondAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,163),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",random[ss](1,10)),
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
        SecondAnswer.box.pos.X = 125;
        // Add the label element to the main frame.
        SecondAnswer.Pack (mainFrame);
		
		ThirdAnswer = new ('Samples_ZF_Label').Init
        (
            // Position
            (0,163),
            // Size.
            (0, smallFont.GetHeight ()),
            // The label's text
            text: string.Format("%d ",random[ss](1,10)),
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
        ThirdAnswer.box.pos.X = 200;
        // Add the label element to the main frame.
        ThirdAnswer.Pack (mainFrame);
		
		Question.Pack (mainFrame);
    }
}
