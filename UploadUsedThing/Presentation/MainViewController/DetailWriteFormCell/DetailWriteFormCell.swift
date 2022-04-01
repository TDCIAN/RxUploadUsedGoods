//
//  DetailWriteFormCell.swift
//  UploadUsedThing
//
//  Created by JeongminKim on 2022/04/01.
//

import UIKit
import RxCocoa
import RxSwift

class DetailWriteFormCell: UITableViewCell {
    static let identifier = "DetailWriteFormCell"
    
    let disposeBag = DisposeBag()
    let contentInputTextView = UITextView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(_ viewModel: DetailWriteFormCellViewModel) {
        contentInputTextView.rx.text
            .bind(to: viewModel.contentValue)
            .disposed(by: disposeBag)
    }
    
    private func attribute() {
        contentInputTextView.font = .systemFont(ofSize: 17)
    }
    
    private func layout() {
        contentView.addSubview(contentInputTextView)
        contentInputTextView.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(15)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(300)
        }
    }
}
