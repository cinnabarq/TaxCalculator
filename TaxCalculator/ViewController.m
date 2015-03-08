//
//  ViewController.m
//  TaxCalculator
//
//  Created by Sha Zhu on 15/3/6.
//  Copyright (c) 2015年 Cena Entertaiment. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property double caTax;
@property double chiTax;
@property double nyTax;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
    
}


- (IBAction)onCalculateButtonTapped:(id)sender
{
    
    NSString *enteredText = self.priceTextField.text;
    double enteredValue = enteredText.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    
    else
    {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
