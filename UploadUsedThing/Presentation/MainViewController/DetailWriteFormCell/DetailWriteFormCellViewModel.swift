//
//  DetailWriteFormCellViewModel.swift
//  UploadUsedThing
//
//  Created by JeongminKim on 2022/04/01.
//

import RxSwift
import RxCocoa

struct DetailWriteFormCellViewModel {
    // View -> ViewModel
    let contentValue = PublishRelay<String?>()
}
