//
//  iPhone OAuth Starter Kit
//
//  Supported providers: LinkedIn (OAuth 1.0a)
//
//  Lee Whitney
//  http://whitneyland.com
//

#import <UIKit/UIKit.h>
#import "OAuthLoginView.h"
#import "JSONKit.h"
#import "OAConsumer.h"
#import "OAMutableURLRequest.h"
#import "OADataFetcher.h"
#import "OATokenManager.h"

@class ViewController;
@interface ProfileTabView : UIViewController <UIAlertViewDelegate>
{
    OAToken* accessToken;
    OAConsumer* consumer;
    IBOutlet UIButton *closeButton;
}
@property(nonatomic, assign) ViewController* parentVC;
@property (retain, nonatomic) IBOutlet UIImageView *iconSignInButton;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, retain) IBOutlet UIButton *postButton;
@property (nonatomic, retain) IBOutlet UILabel *postButtonLabel;
@property (nonatomic, retain) IBOutlet UILabel *name;
@property (nonatomic, retain) IBOutlet UILabel *headline;
@property (nonatomic, retain) IBOutlet UILabel *status;
@property (nonatomic, retain) IBOutlet UILabel *updateStatusLabel;
@property (nonatomic, retain) IBOutlet UITextView *statusTextView;
@property (retain, nonatomic) IBOutlet UIImageView *iconPostButton;
@property (nonatomic, retain) OAuthLoginView *oAuthLoginView;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *activity;
@property (retain, nonatomic) IBOutlet UIButton *logoutButton;
@property (retain, nonatomic) IBOutlet UIImageView *iconLogoutButton;



- (IBAction)closeButtonPressed:(id)sender;

- (IBAction)button_TouchUp:(UIButton *)sender;
- (IBAction)logout_TouchUp:(id)sender;
- (void)profileApiCall;
- (void)networkApiCall:(BOOL) isStatusUpdate;
-(void) removeLoginView;


+(void) setConsumerAtFile:(OAConsumer*)consumer1;
+(OAConsumer*) getConsumer;
+(void) deleteConumer;

+(void) setAccessTokenAtFile:(OAToken*)token;
+(OAToken*) getAccessToken;
+(void) deleteAccessToken;


@end
