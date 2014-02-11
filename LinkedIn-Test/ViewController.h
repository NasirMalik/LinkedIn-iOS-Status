//
//  ViewController.h
//  LinkedIn-Test
//
//  Created by Nasir on 31/01/2014.
//  Copyright (c) 2014 agnitus. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ProfileTabView;
@interface ViewController : UIViewController
{
    ProfileTabView* profileTabView;
}
- (IBAction)reloadPressed:(id)sender;

-(void) removeLinkedInview;
@end
