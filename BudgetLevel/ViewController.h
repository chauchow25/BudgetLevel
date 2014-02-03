//
//  ViewController.h
//  BudgetLevel
//
//  Created by Eric Chau on 2/1/14.
//  Copyright (c) 2014 Eric Chau. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "View.h"


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *percentBudgetLabel;
@property (weak, nonatomic) IBOutlet UILabel *amountSpentLabel;

@property (weak, nonatomic) IBOutlet UILabel *budgetNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *editButton;

//part of drawing circle method?
//@property (nonatomic,assign) BOOL canDraw;
@property (weak, nonatomic) IBOutlet UIView *budgetColor;



//for purpose of setting max and min and percentage. 
@property (weak, nonatomic) IBOutlet UITextField *testEditDollarAmount;
@property (weak, nonatomic) IBOutlet UITextField *testEditMaxAmount;
@property (weak, nonatomic) IBOutlet UILabel *dollarSign;

@property (weak, nonatomic) IBOutlet UILabel *percentSign;

@end
