import UIKit


public class CoolCustomView: UIView {

    public override init(frame: CGRect) {
        label = UILabel()

        super.init(frame: frame)

        label.frame = bounds
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(label)

        label.backgroundColor = .white

        label.textAlignment = .center
    }

    convenience init(frame: CGRect, coolness: Coolness) {
        self.init(frame: frame)
        self.coolness = coolness
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public enum Coolness: CaseIterable {
        case un
        case reasonably
        case very
        case extremely
    }
    public var coolness: Coolness = .very {
        didSet {
            configure()
        }
    }

    private var label: UILabel

    private func configure() {
        label.text = labelTextForCoolness(coolness)
    }

    private func labelTextForCoolness(_ coolness: Coolness) -> String {
        switch coolness {
        case .un:
            return "🤡"
        case .reasonably:
            return "🙂"
        case .very:
            return "😎"
        case .extremely:
            return "🤙"
        }
    }

}
