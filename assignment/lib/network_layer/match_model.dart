
class MatchModel {
  String? message;
  Data? data;

  MatchModel({this.message, this.data});

  MatchModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['message'] = message;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  MatchData? matchData;
  List<Innings>? innings;

  Data({this.matchData, this.innings});

  Data.fromJson(Map<String, dynamic> json) {
    matchData = json['matchData'] != null
        ?  MatchData.fromJson(json['matchData'])
        : null;
    if (json['innings'] != null) {
      innings = <Innings>[];
      json['innings'].forEach((v) {
        innings!.add( Innings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    if (this.matchData != null) {
      data['matchData'] = this.matchData!.toJson();
    }
    if (this.innings != null) {
      data['innings'] = innings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MatchData {
  int? matchId;
  String? title;
  String? shortTitle;
  String? subtitle;
  int? format;
  String? formatStr;
  int? status;
  String? statusStr;
  String? statusNote;
  String? verified;
  String? preSquad;
  String? oddsAvailable;
  int? gameState;
  String? gameStateStr;
  Competition? competition;
  Teama? teama;
  Teama? teamb;
  String? dateStart;
  String? dateEnd;
  int? timestampStart;
  int? timestampEnd;
  String? dateStartIst;
  String? dateEndIst;
  Venue? venue;
  String? umpires;
  String? referee;
  String? equation;
  String? live;
  String? result;
  int? resultType;
  String? winMargin;
  int? winningTeamId;
  int? commentary;
  int? wagon;
  int? latestInningNumber;
  String? presquadTime;
  String? verifyTime;
  Toss? toss;
  String? currentOver;
  String? previousOver;
  ManOfTheMatch? manOfTheMatch;
  String? manOfTheSeries;
  int? isFollowon;
  String? teamBattingFirst;
  String? teamBattingSecond;
  String? lastFiveOvers;
  String? liveInningNumber;
  List<Players>? players;
  String? dayRemainingOver;
  Sports? sports;

  MatchData(
      {this.matchId,
        this.title,
        this.shortTitle,
        this.subtitle,
        this.format,
        this.formatStr,
        this.status,
        this.statusStr,
        this.statusNote,
        this.verified,
        this.preSquad,
        this.oddsAvailable,
        this.gameState,
        this.gameStateStr,
        this.competition,
        this.teama,
        this.teamb,
        this.dateStart,
        this.dateEnd,
        this.timestampStart,
        this.timestampEnd,
        this.dateStartIst,
        this.dateEndIst,
        this.venue,
        this.umpires,
        this.referee,
        this.equation,
        this.live,
        this.result,
        this.resultType,
        this.winMargin,
        this.winningTeamId,
        this.commentary,
        this.wagon,
        this.latestInningNumber,
        this.presquadTime,
        this.verifyTime,
        this.toss,
        this.currentOver,
        this.previousOver,
        this.manOfTheMatch,
        this.manOfTheSeries,
        this.isFollowon,
        this.teamBattingFirst,
        this.teamBattingSecond,
        this.lastFiveOvers,
        this.liveInningNumber,
        this.players,
        this.dayRemainingOver,
        this.sports});

  MatchData.fromJson(Map<String, dynamic> json) {
    matchId = json['match_id'];
    title = json['title'];
    shortTitle = json['short_title'];
    subtitle = json['subtitle'];
    format = json['format'];
    formatStr = json['format_str'];
    status = json['status'];
    statusStr = json['status_str'];
    statusNote = json['status_note'];
    verified = json['verified'];
    preSquad = json['pre_squad'];
    oddsAvailable = json['odds_available'];
    gameState = json['game_state'];
    gameStateStr = json['game_state_str'];
    competition = json['competition'] != null
        ?  Competition.fromJson(json['competition'])
        : null;
    teama = json['teama'] != null ?  Teama.fromJson(json['teama']) : null;
    teamb = json['teamb'] != null ?  Teama.fromJson(json['teamb']) : null;
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    timestampStart = json['timestamp_start'];
    timestampEnd = json['timestamp_end'];
    dateStartIst = json['date_start_ist'];
    dateEndIst = json['date_end_ist'];
    venue = json['venue'] != null ?  Venue.fromJson(json['venue']) : null;
    umpires = json['umpires'];
    referee = json['referee'];
    equation = json['equation'];
    live = json['live'];
    result = json['result'];
    resultType = json['result_type'];
    winMargin = json['win_margin'];
    winningTeamId = json['winning_team_id'];
    commentary = json['commentary'];
    wagon = json['wagon'];
    latestInningNumber = json['latest_inning_number'];
    presquadTime = json['presquad_time'];
    verifyTime = json['verify_time'];
    toss = json['toss'] != null ?  Toss.fromJson(json['toss']) : null;
    currentOver = json['current_over'];
    previousOver = json['previous_over'];
    manOfTheMatch = json['man_of_the_match'] != null
        ?  ManOfTheMatch.fromJson(json['man_of_the_match'])
        : null;
    manOfTheSeries = json['man_of_the_series'];
    isFollowon = json['is_followon'];
    teamBattingFirst = json['team_batting_first'];
    teamBattingSecond = json['team_batting_second'];
    lastFiveOvers = json['last_five_overs'];
    liveInningNumber = json['live_inning_number'];
    if (json['players'] != null) {
      players = <Players>[];
      json['players'].forEach((v) {
        players!.add( Players.fromJson(v));
      });
    }
    dayRemainingOver = json['day_remaining_over'];
    sports =
    json['sports'] != null ?  Sports.fromJson(json['sports']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['match_id'] = matchId;
    data['title'] = title;
    data['short_title'] = shortTitle;
    data['subtitle'] = subtitle;
    data['format'] = format;
    data['format_str'] = formatStr;
    data['status'] = status;
    data['status_str'] = statusStr;
    data['status_note'] = statusNote;
    data['verified'] = verified;
    data['pre_squad'] = preSquad;
    data['odds_available'] = oddsAvailable;
    data['game_state'] = gameState;
    data['game_state_str'] = gameStateStr;
    if (competition != null) {
      data['competition'] = competition!.toJson();
    }
    if (teama != null) {
      data['teama'] = teama!.toJson();
    }
    if (teamb != null) {
      data['teamb'] = teamb!.toJson();
    }
    data['date_start'] = dateStart;
    data['date_end'] = dateEnd;
    data['timestamp_start'] = timestampStart;
    data['timestamp_end'] = timestampEnd;
    data['date_start_ist'] = dateStartIst;
    data['date_end_ist'] = dateEndIst;
    if (venue != null) {
      data['venue'] = venue!.toJson();
    }
    data['umpires'] = umpires;
    data['referee'] = referee;
    data['equation'] = equation;
    data['live'] = live;
    data['result'] = result;
    data['result_type'] = resultType;
    data['win_margin'] = winMargin;
    data['winning_team_id'] = winningTeamId;
    data['commentary'] = commentary;
    data['wagon'] = wagon;
    data['latest_inning_number'] = latestInningNumber;
    data['presquad_time'] = presquadTime;
    data['verify_time'] = verifyTime;
    if (toss != null) {
      data['toss'] = toss!.toJson();
    }
    data['current_over'] = currentOver;
    data['previous_over'] = previousOver;
    if (manOfTheMatch != null) {
      data['man_of_the_match'] = manOfTheMatch!.toJson();
    }
    data['man_of_the_series'] = manOfTheSeries;
    data['is_followon'] = isFollowon;
    data['team_batting_first'] = teamBattingFirst;
    data['team_batting_second'] = teamBattingSecond;
    data['last_five_overs'] = lastFiveOvers;
    data['live_inning_number'] = liveInningNumber;
    if (players != null) {
      data['players'] = players!.map((v) => v.toJson()).toList();
    }
    data['day_remaining_over'] = dayRemainingOver;
    if (sports != null) {
      data['sports'] = sports!.toJson();
    }
    return data;
  }
}

class Competition {
  int? cid;
  String? title;
  String? abbr;
  String? type;
  String? category;
  String? matchFormat;
  String? status;
  String? season;
  String? datestart;
  String? dateend;
  String? country;
  String? totalMatches;
  String? totalRounds;
  String? totalTeams;

  Competition(
      {this.cid,
        this.title,
        this.abbr,
        this.type,
        this.category,
        this.matchFormat,
        this.status,
        this.season,
        this.datestart,
        this.dateend,
        this.country,
        this.totalMatches,
        this.totalRounds,
        this.totalTeams});

  Competition.fromJson(Map<String, dynamic> json) {
    cid = json['cid'];
    title = json['title'];
    abbr = json['abbr'];
    type = json['type'];
    category = json['category'];
    matchFormat = json['match_format'];
    status = json['status'];
    season = json['season'];
    datestart = json['datestart'];
    dateend = json['dateend'];
    country = json['country'];
    totalMatches = json['total_matches'];
    totalRounds = json['total_rounds'];
    totalTeams = json['total_teams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['cid'] = cid;
    data['title'] = title;
    data['abbr'] = abbr;
    data['type'] = type;
    data['category'] = category;
    data['match_format'] = matchFormat;
    data['status'] = status;
    data['season'] = season;
    data['datestart'] = datestart;
    data['dateend'] = dateend;
    data['country'] = country;
    data['total_matches'] = totalMatches;
    data['total_rounds'] = totalRounds;
    data['total_teams'] = totalTeams;
    return data;
  }
}

class Teama {
  int? teamId;
  String? name;
  String? shortName;
  String? logoUrl;
  String? thumbUrl;
  String? scoresFull;
  String? scores;
  String? overs;

  Teama(
      {this.teamId,
        this.name,
        this.shortName,
        this.logoUrl,
        this.thumbUrl,
        this.scoresFull,
        this.scores,
        this.overs});

  Teama.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    name = json['name'];
    shortName = json['short_name'];
    logoUrl = json['logo_url'];
    thumbUrl = json['thumb_url'];
    scoresFull = json['scores_full'];
    scores = json['scores'];
    overs = json['overs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['team_id'] = teamId;
    data['name'] = name;
    data['short_name'] = shortName;
    data['logo_url'] = logoUrl;
    data['thumb_url'] = thumbUrl;
    data['scores_full'] = scoresFull;
    data['scores'] = scores;
    data['overs'] = overs;
    return data;
  }
}

class Venue {
  String? venueId;
  String? name;
  String? location;
  String? timezone;

  Venue({this.venueId, this.name, this.location, this.timezone});

  Venue.fromJson(Map<String, dynamic> json) {
    venueId = json['venue_id'];
    name = json['name'];
    location = json['location'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['venue_id'] = venueId;
    data['name'] = name;
    data['location'] = location;
    data['timezone'] = timezone;
    return data;
  }
}

class Toss {
  String? text;
  int? winner;
  int? decision;

  Toss({this.text, this.winner, this.decision});

  Toss.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    winner = json['winner'];
    decision = json['decision'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['text'] = text;
    data['winner'] = winner;
    data['decision'] = decision;
    return data;
  }
}

class ManOfTheMatch {
  int? pid;
  String? name;
  String? thumbUrl;

  ManOfTheMatch({this.pid, this.name, this.thumbUrl});

  ManOfTheMatch.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    name = json['name'];
    thumbUrl = json['thumb_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['pid'] = pid;
    data['name'] = name;
    data['thumb_url'] = thumbUrl;
    return data;
  }
}

class Players {
  int? pid;
  String? title;
  String? shortName;
  String? firstName;
  String? lastName;
  String? middleName;
  String? birthdate;
  String? birthplace;
  String? country;
  String? thumbUrl;
  String? logoUrl;
  String? playingRole;
  String? battingStyle;
  String? bowlingStyle;
  String? fieldingPosition;
  int? recentMatch;
  int? recentAppearance;
  num? fantasyPlayerRating;
  int? t;
  String? nationality;
  String? role;

  Players(
      {this.pid,
        this.title,
        this.shortName,
        this.firstName,
        this.lastName,
        this.middleName,
        this.birthdate,
        this.birthplace,
        this.country,
        this.thumbUrl,
        this.logoUrl,
        this.playingRole,
        this.battingStyle,
        this.bowlingStyle,
        this.fieldingPosition,
        this.recentMatch,
        this.recentAppearance,
        this.fantasyPlayerRating,
        this.t,
        this.nationality,
        this.role});

  Players.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    title = json['title'];
    shortName = json['short_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    middleName = json['middle_name'];
    birthdate = json['birthdate'];
    birthplace = json['birthplace'];
    country = json['country'];
    thumbUrl = json['thumb_url'];
    logoUrl = json['logo_url'];
    playingRole = json['playing_role'];
    battingStyle = json['batting_style'];
    bowlingStyle = json['bowling_style'];
    fieldingPosition = json['fielding_position'];
    recentMatch = json['recent_match'];
    recentAppearance = json['recent_appearance'];
    fantasyPlayerRating = json['fantasy_player_rating'];
    t = json['t'];
    nationality = json['nationality'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['pid'] = pid;
    data['title'] = title;
    data['short_name'] = shortName;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['middle_name'] = middleName;
    data['birthdate'] = birthdate;
    data['birthplace'] = birthplace;
    data['country'] = country;

    data['thumb_url'] = thumbUrl;
    data['logo_url'] = logoUrl;
    data['playing_role'] = playingRole;
    data['batting_style'] = battingStyle;
    data['bowling_style'] = bowlingStyle;
    data['fielding_position'] = fieldingPosition;
    data['recent_match'] = recentMatch;
    data['recent_appearance'] = recentAppearance;
    data['fantasy_player_rating'] = fantasyPlayerRating;
    data['t'] = t;
    data['nationality'] = nationality;
    data['role'] = role;
    return data;
  }
}

class Sports {
  String? sId;
  int? status;
  String? name;
  String? aPIID;
  SportImages? sportImages;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Sports(
      {this.sId,
        this.status,
        this.name,
        this.aPIID,
        this.sportImages,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Sports.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    status = json['status'];
    name = json['name'];
    aPIID = json['APIID'];
    sportImages = json['sportImages'] != null
        ?  SportImages.fromJson(json['sportImages'])
        : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['_id'] = sId;
    data['status'] = status;
    data['name'] = name;
    data['APIID'] = aPIID;
    if (sportImages != null) {
      data['sportImages'] = sportImages!.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}

class SportImages {
  String? selected;
  String? unselected;

  SportImages({this.selected, this.unselected});

  SportImages.fromJson(Map<String, dynamic> json) {
    selected = json['selected'];
    unselected = json['unselected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['selected'] = selected;
    data['unselected'] = unselected;
    return data;
  }
}

class Innings {
  int? iid;
  int? number;
  String? name;
  String? shortName;
  int? status;
  int? result;
  int? battingTeamId;
  int? fieldingTeamId;
  String? scores;
  String? scoresFull;
  List<Batsmen>? batsmen;
  List<Bowlers>? bowlers;
  List<Fielder>? fielder;
  List<Fows>? fows;
  LastWicket? lastWicket;
  ExtraRuns? extraRuns;
  Equations? equations;
  CurrentPartnership? currentPartnership;
  List<DidNotBat>? didNotBat;
  Teama? team;

  Innings(
      {this.iid,
        this.number,
        this.name,
        this.shortName,
        this.status,
        this.result,
        this.battingTeamId,
        this.fieldingTeamId,
        this.scores,
        this.scoresFull,
        this.batsmen,
        this.bowlers,
        this.fielder,
        this.fows,
        this.lastWicket,
        this.extraRuns,
        this.equations,
        this.currentPartnership,
        this.didNotBat,
        this.team});

  Innings.fromJson(Map<String, dynamic> json) {
    iid = json['iid'];
    number = json['number'];
    name = json['name'];
    shortName = json['short_name'];
    status = json['status'];
    result = json['result'];
    battingTeamId = json['batting_team_id'];
    fieldingTeamId = json['fielding_team_id'];
    scores = json['scores'];
    scoresFull = json['scores_full'];
    if (json['batsmen'] != null) {
      batsmen = <Batsmen>[];
      json['batsmen'].forEach((v) {
        batsmen!.add( Batsmen.fromJson(v));
      });
    }
    if (json['bowlers'] != null) {
      bowlers = <Bowlers>[];
      json['bowlers'].forEach((v) {
        bowlers!.add( Bowlers.fromJson(v));
      });
    }
    if (json['fielder'] != null) {
      fielder = <Fielder>[];
      json['fielder'].forEach((v) {
        fielder!.add( Fielder.fromJson(v));
      });
    }
    if (json['fows'] != null) {
      fows = <Fows>[];
      json['fows'].forEach((v) {
        fows!.add( Fows.fromJson(v));
      });
    }
    lastWicket = json['last_wicket'] != null
        ?  LastWicket.fromJson(json['last_wicket'])
        : null;
    extraRuns = json['extra_runs'] != null
        ?  ExtraRuns.fromJson(json['extra_runs'])
        : null;
    equations = json['equations'] != null
        ?  Equations.fromJson(json['equations'])
        : null;
    currentPartnership = json['current_partnership'] != null
        ?  CurrentPartnership.fromJson(json['current_partnership'])
        : null;
    if (json['did_not_bat'] != null) {
      didNotBat = <DidNotBat>[];
      json['did_not_bat'].forEach((v) {
        didNotBat!.add( DidNotBat.fromJson(v));
      });
    }
    team = json['team'] != null ?  Teama.fromJson(json['team']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['iid'] = iid;
    data['number'] = number;
    data['name'] = name;
    data['short_name'] = shortName;
    data['status'] = status;
    data['result'] = result;
    data['batting_team_id'] = battingTeamId;
    data['fielding_team_id'] = fieldingTeamId;
    data['scores'] = scores;
    data['scores_full'] = scoresFull;
    if (batsmen != null) {
      data['batsmen'] = batsmen!.map((v) => v.toJson()).toList();
    }
    if (bowlers != null) {
      data['bowlers'] = bowlers!.map((v) => v.toJson()).toList();
    }
    if (fielder != null) {
      data['fielder'] = fielder!.map((v) => v.toJson()).toList();
    }
    if (fows != null) {
      data['fows'] = fows!.map((v) => v.toJson()).toList();
    }
    if (lastWicket != null) {
      data['last_wicket'] = lastWicket!.toJson();
    }
    if (extraRuns != null) {
      data['extra_runs'] = extraRuns!.toJson();
    }
    if (equations != null) {
      data['equations'] = equations!.toJson();
    }
    if (currentPartnership != null) {
      data['current_partnership'] = currentPartnership!.toJson();
    }
    if (didNotBat != null) {
      data['did_not_bat'] = didNotBat!.map((v) => v.toJson()).toList();
    }
    if (team != null) {
      data['team'] = team!.toJson();
    }
    return data;
  }
}

class Batsmen {
  String? name;

  String? batting;
  String? position;
  String? role;
  String? roleStr;
  String? ballsFaced;
  String? fours;
  String? sixes;
  String? run0;
  String? run1;
  String? run2;
  String? run3;
  String? run5;
  String? howOut;
  String? dismissal;
  String? strikeRate;
  String? bowlerId;
  String? firstFielderId;
  String? secondFielderId;
  String? thirdFielderId;

  Batsmen(
      {this.name,

        this.batting,
        this.position,
        this.role,
        this.roleStr,
        this.ballsFaced,
        this.fours,
        this.sixes,
        this.run0,
        this.run1,
        this.run2,
        this.run3,
        this.run5,
        this.howOut,
        this.dismissal,
        this.strikeRate,
        this.bowlerId,
        this.firstFielderId,
        this.secondFielderId,
        this.thirdFielderId});

  Batsmen.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    batting = json['batting'];
    position = json['position'];
    role = json['role'];
    roleStr = json['role_str'];
    ballsFaced = json['balls_faced'];
    fours = json['fours'];
    sixes = json['sixes'];
    run0 = json['run0'];
    run1 = json['run1'];
    run2 = json['run2'];
    run3 = json['run3'];
    run5 = json['run5'];
    howOut = json['how_out'];
    dismissal = json['dismissal'];
    strikeRate = json['strike_rate'];
    bowlerId = json['bowler_id'];
    firstFielderId = json['first_fielder_id'];
    secondFielderId = json['second_fielder_id'];
    thirdFielderId = json['third_fielder_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['name'] = name;
    data['batting'] = batting;
    data['position'] = position;
    data['role'] = role;
    data['role_str'] = roleStr;
    data['balls_faced'] = ballsFaced;
    data['fours'] = fours;
    data['sixes'] = sixes;
    data['run0'] = run0;
    data['run1'] = run1;
    data['run2'] = run2;
    data['run3'] = run3;
    data['run5'] = run5;
    data['how_out'] = howOut;
    data['dismissal'] = dismissal;
    data['strike_rate'] = strikeRate;
    data['bowler_id'] = bowlerId;
    data['first_fielder_id'] = firstFielderId;
    data['second_fielder_id'] = secondFielderId;
    data['third_fielder_id'] = thirdFielderId;
    return data;
  }
}

class Bowlers {
  String? name;
  String? bowlerId;
  String? bowling;
  String? position;
  String? overs;
  String? maidens;
  String? runsConceded;
  String? wickets;
  String? noballs;
  String? wides;
  String? econ;
  String? run0;
  String? bowledcount;
  String? lbwcount;

  Bowlers(
      {this.name,
        this.bowlerId,
        this.bowling,
        this.position,
        this.overs,
        this.maidens,
        this.runsConceded,
        this.wickets,
        this.noballs,
        this.wides,
        this.econ,
        this.run0,
        this.bowledcount,
        this.lbwcount});

  Bowlers.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bowlerId = json['bowler_id'];
    bowling = json['bowling'];
    position = json['position'];
    overs = json['overs'];
    maidens = json['maidens'];
    runsConceded = json['runs_conceded'];
    wickets = json['wickets'];
    noballs = json['noballs'];
    wides = json['wides'];
    econ = json['econ'];
    run0 = json['run0'];
    bowledcount = json['bowledcount'];
    lbwcount = json['lbwcount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['name'] = name;
    data['bowler_id'] = bowlerId;
    data['bowling'] = bowling;
    data['position'] = position;
    data['overs'] = overs;
    data['maidens'] = maidens;
    data['runs_conceded'] = runsConceded;
    data['wickets'] = wickets;
    data['noballs'] = noballs;
    data['wides'] = wides;
    data['econ'] = econ;
    data['run0'] = run0;
    data['bowledcount'] = bowledcount;
    data['lbwcount'] = lbwcount;
    return data;
  }
}

class Fielder {
  String? fielderId;
  String? fielderName;
  int? catches;
  int? runoutThrower;
  int? runoutCatcher;
  int? runoutDirectHit;
  int? stumping;
  String? isSubstitute;

  Fielder(
      {this.fielderId,
        this.fielderName,
        this.catches,
        this.runoutThrower,
        this.runoutCatcher,
        this.runoutDirectHit,
        this.stumping,
        this.isSubstitute});

  Fielder.fromJson(Map<String, dynamic> json) {
    fielderId = json['fielder_id'];
    fielderName = json['fielder_name'];
    catches = json['catches'];
    runoutThrower = json['runout_thrower'];
    runoutCatcher = json['runout_catcher'];
    runoutDirectHit = json['runout_direct_hit'];
    stumping = json['stumping'];
    isSubstitute = json['is_substitute'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['fielder_id'] = fielderId;
    data['fielder_name'] = fielderName;
    data['catches'] = catches;
    data['runout_thrower'] = runoutThrower;
    data['runout_catcher'] = runoutCatcher;
    data['runout_direct_hit'] = runoutDirectHit;
    data['stumping'] = stumping;
    data['is_substitute'] = isSubstitute;
    return data;
  }
}

class Fows {
  String? name;
  String? batsmanId;
  String? runs;
  String? balls;
  String? howOut;
  int? scoreAtDismissal;
  String? oversAtDismissal;
  String? bowlerId;
  String? dismissal;
  int? number;
  String? playerImg;

  Fows(
      {this.name,
        this.batsmanId,
        this.runs,
        this.balls,
        this.howOut,
        this.scoreAtDismissal,
        this.oversAtDismissal,
        this.bowlerId,
        this.dismissal,
        this.number,
        this.playerImg});

  Fows.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    batsmanId = json['batsman_id'];
    runs = json['runs'];
    balls = json['balls'];
    howOut = json['how_out'];
    scoreAtDismissal = json['score_at_dismissal'];
    oversAtDismissal = json['overs_at_dismissal'];
    bowlerId = json['bowler_id'];
    dismissal = json['dismissal'];
    number = json['number'];
    playerImg = json['player_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['name'] = name;
    data['batsman_id'] = batsmanId;
    data['runs'] = runs;
    data['balls'] = balls;
    data['how_out'] = howOut;
    data['score_at_dismissal'] = scoreAtDismissal;
    data['overs_at_dismissal'] = oversAtDismissal;
    data['bowler_id'] = bowlerId;
    data['dismissal'] = dismissal;
    data['number'] = number;
    data['player_img'] = playerImg;
    return data;
  }
}

class LastWicket {
  String? name;
  String? batsmanId;
  String? runs;
  String? balls;
  String? howOut;
  int? scoreAtDismissal;
  String? oversAtDismissal;
  String? bowlerId;
  String? dismissal;
  int? number;

  LastWicket(
      {this.name,
        this.batsmanId,
        this.runs,
        this.balls,
        this.howOut,
        this.scoreAtDismissal,
        this.oversAtDismissal,
        this.bowlerId,
        this.dismissal,
        this.number});

  LastWicket.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    batsmanId = json['batsman_id'];
    runs = json['runs'];
    balls = json['balls'];
    howOut = json['how_out'];
    scoreAtDismissal = json['score_at_dismissal'];
    oversAtDismissal = json['overs_at_dismissal'];
    bowlerId = json['bowler_id'];
    dismissal = json['dismissal'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['name'] = name;
    data['batsman_id'] = batsmanId;
    data['runs'] = runs;
    data['balls'] = balls;
    data['how_out'] = howOut;
    data['score_at_dismissal'] = scoreAtDismissal;
    data['overs_at_dismissal'] = oversAtDismissal;
    data['bowler_id'] = bowlerId;
    data['dismissal'] = dismissal;
    data['number'] = number;
    return data;
  }
}

class ExtraRuns {
  int? byes;
  int? legbyes;
  int? wides;
  int? noballs;
  String? penalty;
  int? total;

  ExtraRuns(
      {this.byes,
        this.legbyes,
        this.wides,
        this.noballs,
        this.penalty,
        this.total});

  ExtraRuns.fromJson(Map<String, dynamic> json) {
    byes = json['byes'];
    legbyes = json['legbyes'];
    wides = json['wides'];
    noballs = json['noballs'];
    penalty = json['penalty'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['byes'] = byes;
    data['legbyes'] = legbyes;
    data['wides'] = wides;
    data['noballs'] = noballs;
    data['penalty'] = penalty;
    data['total'] = total;
    return data;
  }
}

class Equations {
  int? runs;
  int? wickets;
  String? overs;
  int? bowlersUsed;
  String? runrate;

  Equations(
      {this.runs, this.wickets, this.overs, this.bowlersUsed, this.runrate});

  Equations.fromJson(Map<String, dynamic> json) {
    runs = json['runs'];
    wickets = json['wickets'];
    overs = json['overs'];
    bowlersUsed = json['bowlers_used'];
    runrate = json['runrate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['runs'] = runs;
    data['wickets'] = wickets;
    data['overs'] = overs;
    data['bowlers_used'] = bowlersUsed;
    data['runrate'] = runrate;
    return data;
  }
}

class CurrentPartnership {
  int? runs;
  int? balls;
  num? overs;
  List<Batsmen>? batsmen;

  CurrentPartnership({this.runs, this.balls, this.overs, this.batsmen});

  CurrentPartnership.fromJson(Map<String, dynamic> json) {
    runs = json['runs'];
    balls = json['balls'];
    overs = json['overs'];
    if (json['batsmen'] != null) {
      batsmen = <Batsmen>[];
      json['batsmen'].forEach((v) {
        batsmen!.add( Batsmen.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['runs'] = runs;
    data['balls'] = balls;
    data['overs'] = overs;
    if (batsmen != null) {
      data['batsmen'] = batsmen!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Batsmenn {
  String? name;
  int? batsmanId;
  int? runs;
  int? balls;

  Batsmenn({this.name, this.batsmanId, this.runs, this.balls});

  Batsmenn.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    batsmanId = json['batsman_id'];
    runs = json['runs'];
    balls = json['balls'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['name'] = name;
    data['batsman_id'] = batsmanId;
    data['runs'] = runs;
    data['balls'] = balls;
    return data;
  }
}

class DidNotBat {
  String? playerId;
  String? name;
  String? playerImg;

  DidNotBat({this.playerId, this.name, this.playerImg});

  DidNotBat.fromJson(Map<String, dynamic> json) {
    playerId = json['player_id'];
    name = json['name'];
    playerImg = json['player_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['player_id'] = playerId;
    data['name'] = name;
    data['player_img'] = playerImg;
    return data;
  }
}
