//
// SubscribeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SubscribeAPI {
    /**

     - parameter body: (body) Login Body 
     - parameter xSendNotification: (header) Notify subscribers about event. Automatically set using  (optional, default to send)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func login(body: SFBody7Model, xSendNotification: String? = nil, completion: @escaping ((_ data: SFInlineResponse20015Model?,_ error: Error?) -> Void)) {
        loginWithRequestBuilder(body: body, xSendNotification: xSendNotification).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /login
     - Requests to send a login link to the email address
     - examples: [{contentType=application/json, example={
  "emailAddress" : "emailAddress"
}}]
     
     - parameter body: (body) Login Body 
     - parameter xSendNotification: (header) Notify subscribers about event. Automatically set using  (optional, default to send)

     - returns: RequestBuilder<SFInlineResponse20015Model> 
     */
    open class func loginWithRequestBuilder(body: SFBody7Model, xSendNotification: String? = nil) -> RequestBuilder<SFInlineResponse20015Model> {
        let path = "/login"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Send-Notification": xSendNotification
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SFInlineResponse20015Model>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter token: (query) Subscriber Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func logout(token: String, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        logoutWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /logout
     - Logout authenticated user.
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter token: (query) Subscriber Token 

     - returns: RequestBuilder<Any> 
     */
    open class func logoutWithRequestBuilder(token: String) -> RequestBuilder<Any> {
        let path = "/logout"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "token": token
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter token: (query) Subscriber Token 
     - parameter body: (body) Subscriber and Subscription Information 
     - parameter xSendNotification: (header) Notify subscribers about event. Automatically set using  (optional, default to send)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func subscribe(token: String, body: SFBodyModel, xSendNotification: String? = nil, completion: @escaping ((_ data: SFInlineResponse20014Model?,_ error: Error?) -> Void)) {
        subscribeWithRequestBuilder(token: token, body: body, xSendNotification: xSendNotification).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /subscribe
     - examples: [{contentType=application/json, example={
  "createdAt" : "createdAt",
  "emailAddress" : "emailAddress",
  "generalMessageEmailSubscribed" : true,
  "subscription" : [ {
    "all" : true,
    "instances" : {
      "key" : {
        "all" : true,
        "services" : {
          "key" : {
            "severities" : {
              "major" : true,
              "minor" : true,
              "maintenances" : true
            }
          }
        }
      }
    },
    "products" : {
      "key" : {
        "major" : true,
        "minor" : true,
        "maintenances" : true
      }
    }
  }, {
    "all" : true,
    "instances" : {
      "key" : {
        "all" : true,
        "services" : {
          "key" : {
            "severities" : {
              "major" : true,
              "minor" : true,
              "maintenances" : true
            }
          }
        }
      }
    },
    "products" : {
      "key" : {
        "major" : true,
        "minor" : true,
        "maintenances" : true
      }
    }
  } ],
  "locale" : "locale",
  "isActive" : true,
  "updatedAt" : "updatedAt"
}}]
     
     - parameter token: (query) Subscriber Token 
     - parameter body: (body) Subscriber and Subscription Information 
     - parameter xSendNotification: (header) Notify subscribers about event. Automatically set using  (optional, default to send)

     - returns: RequestBuilder<SFInlineResponse20014Model> 
     */
    open class func subscribeWithRequestBuilder(token: String, body: SFBodyModel, xSendNotification: String? = nil) -> RequestBuilder<SFInlineResponse20014Model> {
        let path = "/subscribe"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "token": token
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Send-Notification": xSendNotification
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SFInlineResponse20014Model>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter body: (body) Unsubscribe body (optional)
     - parameter token: (query) Subscriber Token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func unsubscribe(body: SFBody5Model? = nil, token: String? = nil, completion: @escaping ((_ data: SFInlineResponse20014Model?,_ error: Error?) -> Void)) {
        unsubscribeWithRequestBuilder(body: body, token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /unsubscribe
     - examples: [{contentType=application/json, example={
  "createdAt" : "createdAt",
  "emailAddress" : "emailAddress",
  "generalMessageEmailSubscribed" : true,
  "subscription" : [ {
    "all" : true,
    "instances" : {
      "key" : {
        "all" : true,
        "services" : {
          "key" : {
            "severities" : {
              "major" : true,
              "minor" : true,
              "maintenances" : true
            }
          }
        }
      }
    },
    "products" : {
      "key" : {
        "major" : true,
        "minor" : true,
        "maintenances" : true
      }
    }
  }, {
    "all" : true,
    "instances" : {
      "key" : {
        "all" : true,
        "services" : {
          "key" : {
            "severities" : {
              "major" : true,
              "minor" : true,
              "maintenances" : true
            }
          }
        }
      }
    },
    "products" : {
      "key" : {
        "major" : true,
        "minor" : true,
        "maintenances" : true
      }
    }
  } ],
  "locale" : "locale",
  "isActive" : true,
  "updatedAt" : "updatedAt"
}}]
     
     - parameter body: (body) Unsubscribe body (optional)
     - parameter token: (query) Subscriber Token (optional)

     - returns: RequestBuilder<SFInlineResponse20014Model> 
     */
    open class func unsubscribeWithRequestBuilder(body: SFBody5Model? = nil, token: String? = nil) -> RequestBuilder<SFInlineResponse20014Model> {
        let path = "/unsubscribe"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "token": token
        ])

        let requestBuilder: RequestBuilder<SFInlineResponse20014Model>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Unsubscribe body (optional)
     - parameter token: (query) Subscriber Token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func unsubscribe_0(body: SFBody6Model? = nil, token: String? = nil, completion: @escaping ((_ data: SFInlineResponse20014Model?,_ error: Error?) -> Void)) {
        unsubscribe_0WithRequestBuilder(body: body, token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /unsubscribe
     - examples: [{contentType=application/json, example={
  "createdAt" : "createdAt",
  "emailAddress" : "emailAddress",
  "generalMessageEmailSubscribed" : true,
  "subscription" : [ {
    "all" : true,
    "instances" : {
      "key" : {
        "all" : true,
        "services" : {
          "key" : {
            "severities" : {
              "major" : true,
              "minor" : true,
              "maintenances" : true
            }
          }
        }
      }
    },
    "products" : {
      "key" : {
        "major" : true,
        "minor" : true,
        "maintenances" : true
      }
    }
  }, {
    "all" : true,
    "instances" : {
      "key" : {
        "all" : true,
        "services" : {
          "key" : {
            "severities" : {
              "major" : true,
              "minor" : true,
              "maintenances" : true
            }
          }
        }
      }
    },
    "products" : {
      "key" : {
        "major" : true,
        "minor" : true,
        "maintenances" : true
      }
    }
  } ],
  "locale" : "locale",
  "isActive" : true,
  "updatedAt" : "updatedAt"
}}]
     
     - parameter body: (body) Unsubscribe body (optional)
     - parameter token: (query) Subscriber Token (optional)

     - returns: RequestBuilder<SFInlineResponse20014Model> 
     */
    open class func unsubscribe_0WithRequestBuilder(body: SFBody6Model? = nil, token: String? = nil) -> RequestBuilder<SFInlineResponse20014Model> {
        let path = "/unsubscribe"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "token": token
        ])

        let requestBuilder: RequestBuilder<SFInlineResponse20014Model>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}