//
//  ReddViewController.h
//  IMCalculator-iphone
//
//  Created by Rinaldo Bueno on 25/10/13.
//  Copyright (c) 2013 Rinaldo Bueno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReddViewController : UIViewController{
    IBOutlet UITextField *_KgTf;
    IBOutlet UITextField *_heightTf;
    IBOutlet UILabel *_weightLabel;
    IBOutlet UILabel *_situationLabel;
}

@property (retain, nonatomic) UITextField *kgTf;
@property (retain, nonatomic) UITextField *heightTf;
@property (retain, nonatomic) UILabel *weightLabel;
@property (retain, nonatomic) UILabel *situationLabel;


-(IBAction)calculatePressed:(id)sender;

@end

