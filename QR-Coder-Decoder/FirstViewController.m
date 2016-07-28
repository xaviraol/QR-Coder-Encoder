//
//  FirstViewController.m
//  QR-Coder-Decoder
//
//  Created by Xavier Ramos Oliver on 25/07/16.
//  Copyright © 2016 xaviraol. All rights reserved.
//

#import "FirstViewController.h"
#import "UIImage+MDQRCode.h"


@interface FirstViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIImageView *qrImage;

- (IBAction)codeTextAction:(id)sender;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)codeTextAction:(id)sender{
    _qrImage.image = [UIImage mdQRCodeForString:_textField.text size:_qrImage.bounds.size.width fillColor:[UIColor darkGrayColor]];

}
@end
