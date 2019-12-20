//
// TranslationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import Foundation

open class TranslationAPI {
    /**

     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLocalizations(locale: String? = nil, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
        getLocalizationsWithRequestBuilder(locale: locale).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     - GET /localizations
     - Returns object of localized text
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]

     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

     - returns: RequestBuilder<[Any]>
     */
    open class func getLocalizationsWithRequestBuilder(locale: String? = nil) -> RequestBuilder<[Any]> {
        let path = "/localizations"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "locale": locale,
        ])

        let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
    }
}
