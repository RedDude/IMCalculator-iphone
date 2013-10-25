//
//  ReddViewController.m
//  IMCalculator-iphone
//
//  Created by Rinaldo Bueno on 25/10/13.
//  Copyright (c) 2013 Rinaldo Bueno. All rights reserved.
//

#import "ReddViewController.h"

@interface ReddViewController ()

@end

@implementation ReddViewController
@synthesize kgTf;
@synthesize heightTf;
@synthesize weightLabel;
@synthesize situationLabel;


- (IBAction)calculatePressed:(id)sender{
    [self.view endEditing:YES];
    if([kgTf.text length] != 0 && [heightTf.text length] != 0) {
        
        float kg = [kgTf.text floatValue];
        float height = [heightTf.text floatValue];
        float weight = kg/(height*height);
        
        NSString *situation;
        
        if(weight <= 17)
            situation = [NSString stringWithFormat: @"Muito abaixo do peso"];
        else if(weight >= 17 && weight <= 18.49)
            situation = @"Abaixo do Peso";
        else if(weight >= 18.5 && weight <= 24.99)
            situation = @"Peso Normal";
        else if(weight >= 25 && weight <= 29.99)
            situation = @"Acima do Peso";
        else if(weight >= 30 && weight <= 34.99)
            situation = @"Obesidade I";
        else if(weight >= 35 && weight >= 39.99)
            situation = @"Obesidade II (severa)";
        else if(weight >= 40)
            situation = @"Obesidade III (mórbida)";
        
        weightLabel.text = [NSString stringWithFormat:@"%.2f", weight];
        situationLabel.text = situation;
        
    }
    else {
        weightLabel.text = @" ";
        situationLabel.text = @" ";
        
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    kgTf.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    heightTf.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    if (([[[UIDevice currentDevice] systemVersion] doubleValue] >= 4.1)) {
        kgTf.keyboardType = UIKeyboardTypeDecimalPad;
        heightTf.keyboardType = UIKeyboardTypeDecimalPad;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
