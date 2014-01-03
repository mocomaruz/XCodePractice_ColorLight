//
//  ViewController.m
//  ColorLight
//
//  Created by Naoki KODAMA on 2014/01/03.
//  Copyright (c) 2014年 Naoki KODAMA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)switchOnOff:(UISwitch *)sender;
- (IBAction)selectSegment:(UISegmentedControl *)sender;
- (IBAction)clickButton:(UIButton *)sender;
- (IBAction)selectRed:(UISlider *)sender;
- (IBAction)selectGreen:(UISlider *)sender;
- (IBAction)selectBlue:(UISlider *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchOnOff:(UISwitch *)sender {
    NSLog(@"switch %d",sender.on);
    
    if (sender.on) {
        self.view.backgroundColor = [UIColor greenColor];
    }else{
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (IBAction)selectSegment:(UISegmentedControl *)sender {
    NSLog(@"segment %d",sender.selectedSegmentIndex);

    if (sender.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor whiteColor];
    }else if(sender.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor blackColor];
    }else{
        self.view.backgroundColor = [UIColor yellowColor];
    }
}

- (IBAction)clickButton:(UIButton *)sender {
    UIAlertView * alert = [[UIAlertView alloc]
                           initWithTitle:@"やっほー"
                           message:@"餃子大好き！"
                           delegate:self
                           cancelButtonTitle:nil
                           otherButtonTitles:@"OK",nil];
    
    [alert show];
}

- (IBAction)selectRed:(UISlider *)sender {
    UIColor *color = [UIColor colorWithRed:sender.value green:0.5 blue:1.0 alpha:1.0];
    self.view.backgroundColor = color;
}

- (IBAction)selectGreen:(UISlider *)sender {
    UIColor *color = [UIColor colorWithRed:0.5 green:sender.value blue:0.5 alpha:1.0];
    self.view.backgroundColor = color;
}

- (IBAction)selectBlue:(UISlider *)sender {
    UIColor *color = [UIColor colorWithRed:0.5 green:0.5 blue:sender.value alpha:1.0];
    self.view.backgroundColor = color;
}
@end
