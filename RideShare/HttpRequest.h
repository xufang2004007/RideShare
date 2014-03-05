//
//  HttpRequest.h
//  RideShare
//
//  Created by 放放 on 14-2-27.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpRequest : NSObject
+(NSInteger)addPassenger : (NSString*)firstName
            LastName: (NSString*)lastName
                  //id: (NSString*)passenger_id
                itsc: (NSString*)itscEmail
            password: (NSString*)password
              gender: (NSString*)gender
      preferenceName: (NSString*)preferenceName
;

+(NSInteger)addDriver : (NSString*)firstName
                 LastName: (NSString*)lastName
//id: (NSString*)driver_id
                     itsc: (NSString*)itscEmail
                 password: (NSString*)password
                   gender: (NSString*)gender
           preferenceName: (NSString*)preferenceName
           carPlateNumber: (NSString*)carPlateNumber
;


@end
