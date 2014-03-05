//
//  HttpRequest.m
//  RideShare
//
//  Created by 放放 on 14-2-27.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import "HttpRequest.h"

@implementation HttpRequest

+(NSInteger)addPassenger:(NSString *)firstName
           LastName:(NSString *)lastName
                // id:(NSString *)passenger_id
               itsc:(NSString *)itscEmail
           password:(NSString *)password
             gender:(NSString *)gender
     preferenceName:(NSString *)preferenceName
{
    NSString *post = [NSString stringWithFormat:
                      @"request_type=addPassenger&firstname=%@&lastname=%@&itsc=%@&password=%@&gender=%@&preferencename=%@",
                      firstName,
                      lastName,
                      itscEmail,
                      password,
                      gender,
                      preferenceName];
    NSLog(@"post data:%@", post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init] ;
    
    [request setURL:[NSURL URLWithString:@"http://rideshare.ust.hk/cgi-bin/dbInsert.php"]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    NSString *url = @"http://rideshare.ust.hk/cgi-bin/dbInsert.php";
    NSError *error = [[NSError alloc] init];
    NSHTTPURLResponse *responseCode = nil;
    NSData *oResponseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    
    if([responseCode statusCode] != 200)
        NSLog(@"Error getting %@, HTTP status code %i", url, [responseCode statusCode]);
    
    return [responseCode statusCode];
    
}

+(NSInteger)addDriver:(NSString *)firstName
                LastName:(NSString *)lastName
// id:(NSString *)driver_id
                    itsc:(NSString *)itscEmail
                password:(NSString *)password
                  gender:(NSString *)gender
          preferenceName:(NSString *)preferenceName
          carPlateNumber:(NSString *)carPlateNumber

{
    NSString *post = [NSString stringWithFormat:
                      @"request_type=addDriver&firstname=%@&lastname=%@&email=%@&password=%@&gender=%@&preferencename=%@&carplatenumber=%@&rate=0",
                      firstName,
                      lastName,
                      itscEmail,
                      password,
                      gender,
                      preferenceName,
                      carPlateNumber];
    NSLog(@"post data:%@", post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init] ;
    
    [request setURL:[NSURL URLWithString:@"http://rideshare.ust.hk/cgi-bin/dbInsert.php"]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    NSString *url = @"http://rideshare.ust.hk/cgi-bin/dbInsert.php";
    NSError *error = [[NSError alloc] init];
    NSHTTPURLResponse *responseCode = nil;
    NSData *oResponseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    
    if([responseCode statusCode] != 200)
        NSLog(@"Error getting %@, HTTP status code %i", url, [responseCode statusCode]);
    
    return [responseCode statusCode];
    
}
@end
