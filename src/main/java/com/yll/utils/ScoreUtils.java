package com.yll.utils;

/**
 * @author yll
 * @description 根据奖项求得加分
 * @date 2020/2/24
 */
public class ScoreUtils {
    /**
     * 根据比赛级别等级，比赛类型（团队个人），比赛分类（学科，专业，项目，综合素质），比赛参与人数，是否是负责人
     * 负责人这一项：只有在此比赛 对负责人和其他人的加分不一样的情况(比赛分类不一样的情况下)，此项才生效
     * 比如创新创业主持人之类的，这种情况下，加分不同，所以负责人这一项为1，
     * 其他比赛加分没有区别，比如天梯赛，所以此项为0
     * */
    public static double acquireScore(String awardLevel,String awardRate,String awardClassify,String awardType,Integer awardPeo,Integer awardLeader){
        double score = 0;
        if(awardClassify == "学科竞赛"){
            if(awardLevel == "国家级"){
                if(awardRate == "一等奖"){
                    score = score + 12;
                }
                if(awardRate == "二等奖"){
                    score = score + 10;
                }
                if(awardRate == "三等奖"){
                    score = score + 8;
                }
            }
            if(awardLevel == "省级"){
                if(awardRate == "一等奖"){
                    score = score + 7;
                }
                if(awardRate == "二等奖"){
                    score = score + 6;
                }
                if(awardRate == "三等奖"){
                    score = score + 5;
                }
            }
            if(awardLevel == "校级" || awardLevel == "院级"){
                if(awardRate == "一等奖"){
                    score = score + 4;
                }
                if(awardRate == "二等奖"){
                    score = score + 3;
                }
                if(awardRate == "三等奖"){
                    score = score + 2;
                }
            }
        }
        if(awardClassify == "专业技能类竞赛"){
            if (awardLevel == "国家级") {
                score = score + 4;
            }
            if (awardLevel == "省级") {
                score = score + 3;
            }
            if (awardLevel == "校级" || awardLevel == "院级") {
                score = score + 2;
            }
        }
        if(awardType == "团体赛"){
            if(awardPeo > 3) {
                awardPeo = 3;
            }
            score = score / 3;
        }
        if(awardClassify == "创新项目"){
            if(awardLeader == 1){
                if(awardLevel == "国家级"){
                    score = score + 8;
                }
                if(awardLevel == "省级"){
                    score = score + 6;
                }
                if(awardLevel == "校级"){
                    score = score + 4;
                }
                if(awardLevel == "院级"){
                    score = score + 2;
                }
            }else{
                if(awardLevel == "国家级"){
                    score = score + 4;
                }
                if(awardLevel == "省级"){
                    score = score + 3;
                }
                if(awardLevel == "校级"){
                    score = score + 2;
                }
                if(awardLevel == "院级"){
                    score = score + 1;
                }
            }

        }
        if(awardClassify == "体美综合素质"){
            if(awardPeo > 1) {
                if(awardLevel == "省级"){
                    score = score + 2;
                }
                if(awardLevel == "校级"){
                    score = score + 1;
                }
                if(awardLevel == "院级"){
                    score = score + 0.5;
                }
            }else{
                if(awardLevel == "省级"){
                    score = score + 4;
                }
                if(awardLevel == "校级"){
                    score = score + 2;
                }
                if(awardLevel == "院级"){
                    score = score + 1;
                }
            }
        }
        return score;
    }
}
