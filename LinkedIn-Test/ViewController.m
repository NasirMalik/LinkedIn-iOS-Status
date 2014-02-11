//
//  ViewController.m
//  LinkedIn-Test
//
//  Created by Nasir on 31/01/2014.
//  Copyright (c) 2014 agnitus. All rights reserved.
//

#import "ViewController.h"
#import "ProfileTabView.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (IBAction)reloadPressed:(id)sender {
    
    profileTabView=[[ProfileTabView alloc] init];
    profileTabView.parentVC=self;
    profileTabView.view.frame=CGRectMake(0, 0, profileTabView.view.frame.size.width, profileTabView.view.frame.size.height);
    profileTabView.view.center=self.view.center;
    [self.view addSubview:profileTabView.view];
}

-(void) removeLinkedInview
{
    [profileTabView.view removeFromSuperview];
    [profileTabView release];
    profileTabView=nil;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
