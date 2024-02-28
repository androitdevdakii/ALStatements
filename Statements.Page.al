page 50112 "Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';


    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    Caption = 'Difficulty';
                    ApplicationArea = All;
                    ToolTip = 'Enter difficulty level';

                    // trigger that validates
                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }

            group(Output)
            {
                Caption = 'Output';
                /// <summary>
                /// Output Area
                /// </summary>
                field(Suggestion; Suggestion)
                {
                    Caption = 'Suggestion';
                    ApplicationArea = All;
                    ToolTip = 'Enter a suggestion.';
                    Editable = false;
                }

                field(Level; Level)
                {
                    Caption = 'Level';
                    ApplicationArea = All;
                    ToolTip = 'Enter the level.';
                    Editable = false;
                }
            }
        }
    }

    var
        /// <param> </param>
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    /// <summary>
    /// Thus the documentation began with a bang
    /// </summary>
    /// <param name="Sex"></param>
    /// <param name="Money"></param>
    local procedure GetSuggestion()
    var
    begin
        Level := '';
        Suggestion := '';
        #region case statement
        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-learning or remote training.';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-led training.';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Hi ' + UserId() + ', Take e-learning or self-study. at ' + CompanyName;
                end;
        end;
        #endregion
    end;
}