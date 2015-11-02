//
//  ViewController.m
//  FileTest
//
//  Created by Arturs Braucs on 02/11/15.
//  Copyright © 2015 arturs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleOpenURL:(NSURL *)url {
    if ([[url pathExtension]isEqualToString:@"artufile"]) {
        NSLog(@"======>>>>> URL: %@", url);
        
        // Initialize Document Interaction Controller
        self.documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:url];
        
        // Configure Document Interaction Controller
        [self.documentInteractionController setDelegate:self];
        
        // Present Open In Menu
        [self.documentInteractionController presentOpenInMenuFromRect:[[self view]frame] inView:self.view animated:YES];
    }
}

@end
