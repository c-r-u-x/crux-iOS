//
//  Literal.swift
//  cliary
//
//  Created by Jinyoung Yoo on 6/30/24.
//

import Foundation

enum Literal {
    enum NavigationTitle: String {
        case profile = "프로필"
    }
    
    enum Profile {
        enum MonthlyPrimaryLog: String {
            case totalTime = "운동 시간"
            case attendance = "출석"
            case completionRate = "완등률"
        }
        
        enum MonthlySecondaryLog {
            // 추후 변경
            enum userLevelComment: String {
                case yellow = "초급"
                case green = "도전자"
                case blue = "중급자"
                case red = "숙련자"
                case purple = "보라이머 일 수도...?"
                case black = "모험가"
            }
            
            var title: String {
                return "내가 잡은 홀드는?"
            }
        }
        
        enum MonthlyTertiaryLog: String {
            case mostVisited = "이번 달 베스트 암장"
            case firstClear = "난이도 별 도달 날짜"
        }
    }
}
