
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
    int boundary;
    int wickets;
    String playingType;// battter/bawler/all-rounder

    Player(String name, int age, String jerseyNumber, String playingType) {
        this.name = name;
        this.age = age;
        this.jerseyNumber = jerseyNumber;
        this.runs = 0;
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
    Player striker;
    Player nonStriker;
    Player bawler;
    int over;
    int ball;

    ScoreCard(Inning inn) {
        this.runs = inn.battingTeam.runs;
        this.wickets = inn.battingTeam.wickets;
        this.striker = inn.striker;
        this.nonStriker = inn.nonStriker;
        this.bawler = inn.bawler;
    }

    void display() {
    }
}

class Inning {
    int overs[][];
    int wides[][];
    int noBalls[][];
    CrictetTeam battingTeam;
    CrictetTeam fieldingTeam;
    Player striker;
    Player nonStriker;
    Player bawler;
    ScoreCard scorecard;
    Scanner sc = Main.sc;

    Inning(
            CrictetTeam battingTeam, CrictetTeam fieldingTeam,
            int overs) {
        this.battingTeam = battingTeam;
        this.fieldingTeam = fieldingTeam;
        this.overs = new int[overs][6];
        this.wides = new int[overs][6];
        this.noBalls = new int[overs][6];
        this.scorecard = new ScoreCard(this);
    }

    void start() {
        int k = 0;
        String notEligibleBattersJersey[] = new String[12];
        String notEligibleBawlersJersey[] = new String[12];

        Main.flushConsole();
        System.out.println("Choose Striker:");
        this.striker = battingTeam.choose(notEligibleBattersJersey);
        notEligibleBattersJersey[k++] = this.striker.jerseyNumber;

        Main.flushConsole();
        System.out.println("Choose Non-Striker:");
        this.nonStriker = battingTeam.choose(notEligibleBattersJersey);
        notEligibleBattersJersey[k++] = this.nonStriker.jerseyNumber;

        for (int i = 1; i <= overs.length; i++) {

            Main.flushConsole();
            System.out.println("Choose Bawler for over " + i + ":");
            this.bawler = fieldingTeam.choose(notEligibleBawlersJersey);
            notEligibleBawlersJersey[0] = bawler.jerseyNumber;

            Main.flushConsole();
            System.out.println("*********Over " + i + " begins*********\n");
            System.out.println("striker:" + " ".repeat(20 - 8) + this.striker.name);
            System.out.println("non-striker:" + " ".repeat(20 - 12) + this.nonStriker.name);
            System.out.println("bowler: " + " ".repeat(20 - 8) + bawler.name);

            System.out.println("OPTIONS:\n\t1-6\n\t-1. Wide\t-2. No Ball\t-3. Wicket");
            for (int j = 1; j <= 6; j++) {
                System.out
                        .print("Ball no " + (i - 1) + "." + j + " " + bawler.name + " to " + this.striker.name + ">>>");
                int nextBall = sc.nextInt();
                // handle wide/no ball/ wickett
                if (nextBall == 1) {
                    // swap striker and non-striker
                    Player temp = this.striker;
                    this.striker = this.nonStriker;
                    this.nonStriker = temp;
                } else if (nextBall == 4 || nextBall == 6) {
                    this.striker.boundary++;
                } else if (nextBall == -1) { // wide
                    this.wides[i - 1][j - 1]++;
                    this.overs[i - 1][j - 1] = nextBall;
                    battingTeam.runs++;
                    j--;
                    continue;
                } else if (nextBall == -2) { // no ball
                    this.noBalls[i - 1][j - 1]++;
                    this.overs[i - 1][j - 1] = nextBall;
                    battingTeam.runs++;
                    j--;
                    continue;
                } else if (nextBall == -3) { // wicket
                    if (this.noBalls[i - 1][j - 1] > 0) // last ball is free hit
                        continue;
                    bawler.wickets++;
                    Main.flushConsole();
                    System.out.println(striker.name + " is out. Choose new batsman:");
                    this.striker = battingTeam.choose(notEligibleBattersJersey);
                    battingTeam.wickets++;
                    notEligibleBattersJersey[k++] = this.striker.jerseyNumber;

                    this.overs[i - 1][j - 1] = nextBall;
                    continue;
                }

                this.overs[i - 1][j - 1] = nextBall;
                battingTeam.runs += nextBall;
                this.striker.runs += nextBall;
            }
            this.scorecard.display();
            // swap striker and non-striker
            Player temp = this.striker;
            this.striker = this.nonStriker;
            this.nonStriker = temp;

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
    Scanner sc = Main.sc;

    CrictetTeam(String teamName, Player[] players) {
        this.teamName = teamName;
        this.players = players;
    }

    Player choose(String[] notEligibleJersey) {
        System.out.println("TEAM: " + this.teamName);
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
        Player chosenPlayer = null;
        while (true) {
            System.out.print("jersey number:\n>>>");
            String nextPlayerJersey = this.sc.next();
            for (Player p : this.players) {
                if (p.jerseyNumber.equals(nextPlayerJersey)) {
                    chosenPlayer = p;
                    break;
                }
            }
            if (chosenPlayer != null)
                break;
        }
        return chosenPlayer;

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

    static void flushConsole() {
        System.out.print("\n".repeat(25));
    }

    public static void main(String[] args) {

        Player[] players1 = {
                new Player("Virat Kohli", 35, "18", "batter"),
                new Player("Rohit Sharma", 37, "45", "batter"),
                new Player("Shubman Gill", 25, "77", "batter"),
                new Player("Suryakumar Yadav", 34, "63", "batter"),
                new Player("Hardik Pandya", 31, "33", "all-rounder"),
                new Player("Ravindra Jadeja", 36, "8", "all-rounder"),
                new Player("Ravichandran Ashwin", 38, "99", "all-rounder"),
                new Player("Jasprit Bumrah", 31, "93", "bowler"),
                new Player("Mohammed Siraj", 31, "13", "bowler"),
                new Player("Kuldeep Yadav", 30, "23", "bowler"),
                new Player("Arshdeep Singh", 26, "2", "bowler"),
                new Player("Rishabh Pant", 27, "17", "batter")
        };

        Player[] players2 = {
                new Player("Babar Azam", 30, "56", "batter"),
                new Player("Mohammad Rizwan", 33, "16", "batter"),
                new Player("Fakhar Zaman", 35, "39", "batter"),
                new Player("Saud Shakeel", 29, "84", "batter"),
                new Player("Shadab Khan", 27, "7", "all-rounder"),
                new Player("Imad Wasim", 36, "9", "all-rounder"),
                new Player("Mohammad Nawaz", 31, "21", "all-rounder"),
                new Player("Shaheen Afridi", 26, "10", "bowler"),
                new Player("Haris Rauf", 32, "97", "bowler"),
                new Player("Naseem Shah", 23, "71", "bowler"),
                new Player("Abrar Ahmed", 27, "44", "bowler"),
                new Player("Iftikhar Ahmed", 35, "95", "all-rounder")
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
