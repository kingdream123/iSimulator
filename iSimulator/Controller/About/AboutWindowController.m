//
//  AboutWindowController.m
//  iSimulator
//
//  Created by Jakey on 2017/2/21.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "AboutWindowController.h"

@interface AboutWindowController ()

@end

@implementation AboutWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    NSString *version =  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *build =  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    
    self.version.stringValue = [NSString stringWithFormat:@"%@(%@)",version,build];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
}

- (IBAction)githubTouched:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://github.com/shaojiankui/iSimulator"]];
}

- (IBAction)blogTouched:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://www.skyfox.org"]];

}
@end
