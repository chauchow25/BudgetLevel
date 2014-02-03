//
//  ViewController.m
//  BudgetLevel
//
//  Created by Eric Chau on 2/1/14.
//  Copyright (c) 2014 Eric Chau. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
//@synthesize canDraw;

//initialize variable
//may need to move these to subclass budgetDetails?
static float amountSpent = 0;
static float percentTotal = 0;
static float maxAmount = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// view load set up
    
    //set keyboards to decimal pads
    _testEditDollarAmount.keyboardType = UIKeyboardTypeDecimalPad;
    _testEditMaxAmount.keyboardType = UIKeyboardTypeDecimalPad;
    
    
    //default the % and expense total to whatever value is already stored
    _percentBudgetLabel.text = [NSString stringWithFormat:@"%.00f", percentTotal];
    _amountSpentLabel.text = [NSString stringWithFormat:@"%.02f", percentTotal];
    
    //create the initial circle?
    //canDraw = YES;
    //[self.view setCanDraw:YES];
    //[_shapeView setNeedsDisplay];
    
    //initialize view color as white
    _budgetColor.backgroundColor = [UIColor colorWithRed:(1) green:(1) blue:(1) alpha:1];
    
}


//draw circle method
/*
- (void)drawRect:(CGRect)rect {
    if (canDraw == YES) {
    // The color is by this line CGContextSetRGBFillColor( context , red , green , blue , alpha);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    // Draw a circle (filled)
    CGContextFillEllipseInRect(contextRef, CGRectMake(10, 10, 25, 25));
    CGContextSetRGBFillColor(contextRef, 0, 0, 255, 1.0);
    }
}
*/




//actions when clicking out of the text field
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //resign first responder methods
    [self.testEditDollarAmount resignFirstResponder];
    [self.testEditMaxAmount resignFirstResponder];
    
    //initialize new text
    NSString *stringMaxAmount = self.testEditMaxAmount.text;
    NSString *stringDollarAmount = self.testEditDollarAmount.text;
    
    //change amountSpentLabel
    self.amountSpentLabel.text = stringDollarAmount;
    
    //only change maxAmountSpentLabel if entry is not 0
    if((stringMaxAmount.intValue != 0) /*&& (stringDollarAmount.intValue !=0)*/) {
        maxAmount = stringMaxAmount.intValue;
        amountSpent = stringDollarAmount.intValue;
        percentTotal = (amountSpent / maxAmount) * 100;
        self.percentBudgetLabel.text = [NSString stringWithFormat:@"%.00f", percentTotal];
        if (percentTotal<=75) {
            _budgetColor.backgroundColor = [UIColor colorWithRed:((percentTotal/75)*1) green:(1) blue:(0) alpha:1];
        }
        //sets color of square
        if (percentTotal>75 && percentTotal <=100) {
             _budgetColor.backgroundColor = [UIColor colorWithRed:(1) green:(((100-percentTotal)/25)*1) blue:(0) alpha:1];
        }
        if (percentTotal >100){
             _budgetColor.backgroundColor = [UIColor colorWithRed:(1) green:(0) blue:(0) alpha:1];
        }
    }
    if(stringMaxAmount.intValue ==0){
        self.percentBudgetLabel.text = @"";
         _budgetColor.backgroundColor = [UIColor colorWithRed:(1) green:(1) blue:(1) alpha:1];
    }
    
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
