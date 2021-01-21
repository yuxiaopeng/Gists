//
//  ViewController.m
//  Gists
//
//  Created by 于晓鹏 on 2020/4/7.
//  Copyright © 2020 于晓鹏. All rights reserved.
//

#import "ViewController.h"
#import <Accelerate/Accelerate.h>
#import "IPParser.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWasShown:) name:UIKeyboardWillShowNotification object:nil];
    NSString *ip = [IPParser getIPWithURL:@"https://www.github.com"];
    NSLog(@"https://www.github.com -> ip:%@", ip);
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    textField.secureTextEntry = NO;
}

//- (void)keyboardWasShown:(NSNotification *)notif {
//    NSDictionary *info = [notif userInfo];
//    NSValue *value = [info objectForKey:UIKeyboardFrameBeginUserInfoKey];
//    CGSize keyboardSize = [value CGRectValue].size;
//    DLog(@"keyBoard:%f", keyboardSize.height);
//    if (keyboardSize.height>0 && _IdCardText.secureTextEntry == YES) {
//        _IdCardText.secureTextEntry = NO;
//    }
//}

@end
