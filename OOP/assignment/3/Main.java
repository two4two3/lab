
// HIGH LEVEL REQUIREMENTS:
/*
 * - Two teams can play cricket match
 * - See the scorecard
 * - see history (each ball tracing)
 * - Strike Rotate
 * - No ball/ wide ball handling
 * - Avg run per over
 * - dispay No. of wides/noBall/sixes/fours after every over
 */
import java.lang.Math;
import java.util.Scanner;

class Player {
    String name;
    int age;
    int jerseyNumber;
    int runs;
    String playingType;// battter/bawler/all-rounder
}

class Winners {
    CrictetTeam team;

    Winners(CrictetTeam winners) {
        this.team = winners;
    }
}

class Inning {
    int runs; // current runs
    int wickets;
    int overs[][];
    CrictetTeam battingTeam;
    CrictetTeam fieldingTeam;
    Scanner sc = Main.sc;

    Inning(
            CrictetTeam battingTeam, CrictetTeam fieldingTeam,
            int overs) {
        this.battingTeam = battingTeam;
        this.fieldingTeam = fieldingTeam;
        this.overs = new int[overs][6];
    }

    void start() {
        for (int i = 1; i <= overs.length; i++) {

            System.out.println("Over " + i + " begins");

            for (int j = 1; j <= 6; j++) {
                System.out.print("Ball no: " + j + ":");
                // handle wide/no ball/ wicket
                int nextBall = sc.nextInt();
                this.overs[i - 1][j - 1] = nextBall;
                battingTeam.runs += nextBall;
            }

        }
    }
}

class Toss {
    CrictetTeam team1;
    CrictetTeam team2;
    CrictetTeam winners;
    int decision;// 1. batting, 2. fielding
    Scanner sc = Main.sc;

    Toss(CrictetTeam t1, CrictetTeam t2) {
        this.team1 = t1;
        this.team2 = t2;
    }

    void decide(CrictetTeam tossWinner) {

        System.out.println(tossWinner.teamName + " " + "won the toss");
        System.out.print("\t1. batting\n\t2. fielding:\n>>>");

        int choice = sc.nextInt();

        if (choice == 1) { // batting
            System.out.println(tossWinner.teamName + " " + "Decided to bat first.");
            this.decision = 1;
        } else if (choice == 2) { // fielding
            System.out.println(tossWinner.teamName + " " + "Decided to field first.");
            this.decision = 2;
        }

    }

    void toss() {
        int result = (int) Math.round(Math.random());
        if (result == 0) { // team 1
            this.winners = team1;
            this.decide(team1);
        } else { // team 2
            this.winners = team2;
            this.decide(team2);
        }
    }

    int getDecision() {
        return this.decision;
    }

    CrictetTeam getTossWinnerTeam() {
        return winners;
    }

    CrictetTeam getTossLosserTeam() {
        if (team1 == winners) {
            return team2;
        } else {
            return team1;
        }
    }

}

class CrictetTeam {
    String teamName;
    Player players[];
    int runs;
    int extra;

    CrictetTeam(String teamName) {
        this.teamName = teamName;
    }
}

class CrictetMatch {
    CrictetTeam team1;
    CrictetTeam team2;
    int overs;
    Toss toss;
    Inning inningOne;
    Inning inningTwo;
    Winners winnerTeam;

    CrictetMatch(
            CrictetTeam t1, CrictetTeam t2,
            int overs) {
        this.team1 = t1;
        this.team2 = t2;
        this.overs = overs;
    }

    void startToss() {
        this.toss = new Toss(team1, team2);
        this.toss.toss();
        int decision = this.toss.getDecision();

        if (decision == 1) { // batting
            this.inningOne = new Inning(this.toss.getTossWinnerTeam(), this.toss.getTossLosserTeam(), this.overs);
            this.inningTwo = new Inning(this.toss.getTossLosserTeam(), this.toss.getTossWinnerTeam(), this.overs);
        } else if (decision == 2) { // fielding
            this.inningOne = new Inning(this.toss.getTossLosserTeam(), this.toss.getTossWinnerTeam(), this.overs);
            this.inningTwo = new Inning(this.toss.getTossWinnerTeam(), this.toss.getTossLosserTeam(), this.overs);
        }
    }

    void startFirstInning() {
        inningOne.start();
    }

    void startSecondInning() {
        inningTwo.start();
    }

    void getScoreCard() {

    }

    void announceWinner() {

    }
}

public class Main {
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        CrictetTeam t1 = new CrictetTeam("RCB");
        CrictetTeam t2 = new CrictetTeam("CSK");
        CrictetMatch match = new CrictetMatch(t1, t2, 2);
        match.startToss();
        match.startFirstInning();
        match.startSecondInning();
        match.announceWinner();
    }
}
