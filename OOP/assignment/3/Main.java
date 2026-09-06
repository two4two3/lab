
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
    String jerseyNumber;
    int runs;
    String playingType;// battter/bawler/all-rounder

    Player(String name, int age, String jerseyNumber, int runs, String playingType) {
        this.name = name;
        this.age = age;
        this.jerseyNumber = jerseyNumber;
        this.runs = runs;
        this.playingType = playingType;
    }
}

class Winners {
    CrictetTeam team;

    Winners(CrictetTeam winners) {
        this.team = winners;
    }
}

class ScoreCard {
    int runs;
    int wickets;
    Player p1;
    Player p2;
    Player bawler;
    int over;
    int ball;

    ScoreCard(Inning inningOne) {
        this.runs = inningOne.battingTeam.runs;
        this.wickets = inningOne.battingTeam.wickets;
        // this.p1 = inningOne.battingTeam
    }

    void display() {

    }
}

class Inning {
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
        int k = 0;
        String notEligibleBatters[] = new String[12];
        int l = 0;
        String notEligibleBawllers[] = new String[12];

        System.out.println("Choose Striker:");
        Player striker = battingTeam.choose(notEligibleBatters);
        notEligibleBatters[k++] = striker.jerseyNumber;

        System.out.println("Choose Non-Striker:");
        Player nonStriker = battingTeam.choose(notEligibleBatters);
        notEligibleBatters[k++] = nonStriker.jerseyNumber;

        for (int i = 1; i <= overs.length; i++) {

            System.out.println("Choose Bawler for over " + i + ":");
            Player bawler = fieldingTeam.choose(notEligibleBawllers);
            notEligibleBawllers[0] = bawler.jerseyNumber;
            System.out.println("Over " + i + " begins");

            for (int j = 1; j <= 6; j++) {
                System.out.print("Ball no " + j + ":");
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
    int wickets;
    int extra;
    Scanner sc = Main.sc;

    CrictetTeam(String teamName, Player[] players) {
        this.teamName = teamName;
        this.players = players;
    }

    Player choose(String[] notEligibleJersey) {
        System.out.println("jersey number | Player\n");
        for (int i = 0; i < this.players.length; i++) {
            boolean skip = false;
            for (String jersey : notEligibleJersey) {
                if (this.players[i].jerseyNumber.equals(jersey)) {
                    skip = true;
                }
            }
            if (skip)
                continue;
            System.out.print(this.players[i].jerseyNumber);
            System.out.print(" ".repeat(16 - this.players[i].jerseyNumber.length()));
            System.out.print(this.players[i].name + " ".repeat(16 + 20 - this.players[i].name.length()));
            System.out.println(this.players[i].playingType);
        }
        System.out.print("jersey number:\n>>>");
        int nextPlayerJersey = this.sc.nextInt();

        return this.players[0];
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

        Player[] players1 = {
                new Player("Virat Kohli", 35, "18", 12000, "batter"),
                new Player("Rohit Sharma", 37, "45", 11000, "batter"),
                new Player("Shubman Gill", 25, "77", 4500, "batter"),
                new Player("Suryakumar Yadav", 34, "63", 3200, "batter"),
                new Player("Hardik Pandya", 31, "33", 2200, "all-rounder"),
                new Player("Ravindra Jadeja", 36, "8", 2800, "all-rounder"),
                new Player("Ravichandran Ashwin", 38, "99", 750, "all-rounder"),
                new Player("Jasprit Bumrah", 31, "93", 400, "bowler"),
                new Player("Mohammed Siraj", 31, "13", 350, "bowler"),
                new Player("Kuldeep Yadav", 30, "23", 200, "bowler"),
                new Player("Arshdeep Singh", 26, "2", 150, "bowler"),
                new Player("Rishabh Pant", 27, "17", 2500, "batter")
        };

        Player[] players2 = {
                new Player("Babar Azam", 30, "56", 5500, "batter"),
                new Player("Mohammad Rizwan", 33, "16", 4500, "batter"),
                new Player("Fakhar Zaman", 35, "39", 3200, "batter"),
                new Player("Saud Shakeel", 29, "84", 1800, "batter"),
                new Player("Shadab Khan", 27, "7", 1500, "all-rounder"),
                new Player("Imad Wasim", 36, "9", 1100, "all-rounder"),
                new Player("Mohammad Nawaz", 31, "21", 900, "all-rounder"),
                new Player("Shaheen Afridi", 26, "10", 450, "bowler"),
                new Player("Haris Rauf", 32, "97", 300, "bowler"),
                new Player("Naseem Shah", 23, "71", 200, "bowler"),
                new Player("Abrar Ahmed", 27, "44", 100, "bowler"),
                new Player("Iftikhar Ahmed", 35, "95", 1200, "all-rounder")
        };

        CrictetTeam t1 = new CrictetTeam("IND", players1);
        CrictetTeam t2 = new CrictetTeam("PAK", players2);
        CrictetMatch match = new CrictetMatch(t1, t2, 2);
        match.startToss();
        match.startFirstInning();
        match.startSecondInning();
        match.announceWinner();
    }
}
