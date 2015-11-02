//
//  ViewController.h
//  FileTest
//
//  Created by Arturs Braucs on 02/11/15.
//  Copyright © 2015 arturs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIDocumentInteractionControllerDelegate>

@property (nonatomic, readwrite) UIDocumentInteractionController* documentInteractionController;

-(void)handleOpenURL:(NSURL*)url;

@end

