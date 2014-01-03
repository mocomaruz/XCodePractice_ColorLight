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
@end
