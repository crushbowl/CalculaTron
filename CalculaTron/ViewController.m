//
//  ViewController.m
//  CalculaTron
//
//  Created by joy on 5/26/16.
//  Copyright © 2016 JanL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *operandOne;
@property (weak, nonatomic) IBOutlet UITextField *operandTwo;
@property (weak, nonatomic) IBOutlet UILabel *operationLabel;

@property (weak, nonatomic) IBOutlet UIButton *additionButton;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // self.additionButton.hidden = YES;    This hides our addition button
    
}
- (IBAction)onOperationTapped:(UIButton *)sender {
    
    double op1 = self.operandOne.text.doubleValue;
    double op2 = self.operandTwo.text.doubleValue;
    
    
    // Ask
    self.operationLabel.text = sender.currentTitle;
    if ([self.operationLabel.text isEqualToString:@"+"]) {
        self.title = [NSString stringWithFormat:@"%.2f", op1 + op2];
    }else if ([self.operationLabel.text isEqualToString:@"-"]) {
        self.title = [NSString stringWithFormat:@"%.2f", op1 - op2];
    }else if ([self.operationLabel.text.lowercaseString isEqualToString:@"x"]) {
        self.title = [NSString stringWithFormat:@"%.2f", op1 * op2];
    } else {
        self.title = [NSString stringWithFormat:@"%.2f", op1 / op2];
    }
    
    
    
    
}


@end
