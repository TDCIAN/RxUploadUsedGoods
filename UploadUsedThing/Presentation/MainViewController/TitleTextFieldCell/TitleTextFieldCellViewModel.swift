//
//  TitleTextFieldCellViewModel.swift
//  UploadUsedThing
//
//  Created by JeongminKim on 2022/04/01.
//

import RxCocoa

struct TitleTextFieldCellViewModel {
    let titleText = PublishRelay<String?>()
}
