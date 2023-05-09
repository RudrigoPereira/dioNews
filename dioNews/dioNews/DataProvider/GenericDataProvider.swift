//
//  GenericDataProvider.swift
//  dioNews
//
//  Created by Rodrigo Ferreira Pereira on 09/05/23.
//

import Foundation

protocol GenericDataProvider {
    func success(model: Any)
    func errorData(_ provide: GenericDataProvider?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
