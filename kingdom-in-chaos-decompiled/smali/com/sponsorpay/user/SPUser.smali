.class public final Lcom/sponsorpay/user/SPUser;
.super Ljava/util/HashMap;
.source "SPUser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final AGE:Ljava/lang/String; = "age"

.field private static final ANNUAL_HOUSEHOLD_INCOME:Ljava/lang/String; = "annual_household_income"

.field private static final APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final BIRTHDAY:Ljava/lang/String; = "birthdate"

.field private static final CONNECTION:Ljava/lang/String; = "connection"

.field private static final DEVICE:Ljava/lang/String; = "device"

.field private static final EDUCATION:Ljava/lang/String; = "education"

.field private static final ETHNICITY:Ljava/lang/String; = "ethnicity"

.field private static final GENDER:Ljava/lang/String; = "gender"

.field private static final IAP:Ljava/lang/String; = "iap"

.field private static final IAP_AMOUNT:Ljava/lang/String; = "iap_amount"

.field private static final INTERESTS:Ljava/lang/String; = "interests"

.field private static final LAST_SESSION:Ljava/lang/String; = "last_session"

.field private static final LAT:Ljava/lang/String; = "lat"

.field private static final LONGT:Ljava/lang/String; = "longt"

.field private static final MARITAL_STATUS:Ljava/lang/String; = "marital_status"

.field private static final NUMBER_OF_CHILDRENS:Ljava/lang/String; = "children"

.field private static final NUMBER_OF_SESSIONS:Ljava/lang/String; = "number_of_sessions"

.field private static final PS_TIME:Ljava/lang/String; = "ps_time"

.field private static final SEXUAL_ORIENTATION:Ljava/lang/String; = "sexual_orientation"

.field private static final TAG:Ljava/lang/String; = "SPUser"

.field private static final ZIPCODE:Ljava/lang/String; = "zipcode"

.field private static final serialVersionUID:J = -0x52c2441d1c31ead6L

.field private static final singleton:Lcom/sponsorpay/user/SPUser;


# instance fields
.field private isMapDirty:Z

.field private mDataAsString:Ljava/lang/String;

.field private mLastLocation:Landroid/location/Location;

.field private mLocation:Landroid/location/Location;

.field private mNextUpdate:Ljava/util/Calendar;

.field private mReservedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/sponsorpay/user/SPUser;

    invoke-direct {v0}, Lcom/sponsorpay/user/SPUser;-><init>()V

    sput-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/user/SPUser;->isMapDirty:Z

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    .line 65
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "birthdate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "gender"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "sexual_orientation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "ethnicity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "lat"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "longt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "marital_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "children"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "annual_household_income"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "education"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "zipcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "interests"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "iap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "iap_amount"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "number_of_sessions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "ps_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "last_session"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "connection"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "device"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public static addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 254
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    iget-object v0, v0, Lcom/sponsorpay/user/SPUser;->mReservedKeys:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    invoke-virtual {v0, p0, p1}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "SPUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is a reserved key for this HashMap, please select another name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkAutoLocation()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 293
    invoke-static {v7}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sponsorpay/utils/HostInfo;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    .line 294
    .local v1, "locationManager":Landroid/location/LocationManager;
    iget-object v6, p0, Lcom/sponsorpay/user/SPUser;->mLocation:Landroid/location/Location;

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 296
    .local v3, "now":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/sponsorpay/user/SPUser;->mNextUpdate:Ljava/util/Calendar;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sponsorpay/user/SPUser;->mNextUpdate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 298
    :cond_0
    invoke-static {v7}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sponsorpay/utils/HostInfo;->getLocationProviders()Ljava/util/List;

    move-result-object v2

    .line 299
    .local v2, "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 308
    iget-object v6, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    if-eqz v6, :cond_2

    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 311
    .local v5, "yesterday":Ljava/util/Calendar;
    const/4 v6, 0x5

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 312
    iget-object v6, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 313
    iget-object v6, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    invoke-direct {p0, v6}, Lcom/sponsorpay/user/SPUser;->setLocationDetails(Landroid/location/Location;)V

    .line 314
    iput-object v3, p0, Lcom/sponsorpay/user/SPUser;->mNextUpdate:Ljava/util/Calendar;

    .line 315
    iget-object v6, p0, Lcom/sponsorpay/user/SPUser;->mNextUpdate:Ljava/util/Calendar;

    const/16 v7, 0xc

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 320
    .end local v2    # "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "now":Ljava/util/Calendar;
    .end local v5    # "yesterday":Ljava/util/Calendar;
    :cond_2
    return-void

    .line 299
    .restart local v2    # "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "now":Ljava/util/Calendar;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 300
    .local v4, "provider":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 301
    .local v0, "lastKnownLocation":Landroid/location/Location;
    iget-object v7, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    if-nez v7, :cond_4

    .line 302
    iput-object v0, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    .line 304
    :cond_4
    iget-object v7, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 305
    iput-object v0, p0, Lcom/sponsorpay/user/SPUser;->mLastLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method private formatInDegrees(D)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAge()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "age"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getAnnualHouseholdIncome()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "annual_household_income"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBirthdate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "birthdate"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public static getConnection()Lcom/sponsorpay/user/SPUserConnection;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserConnection;

    return-object v0
.end method

.method public static getCustomValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getEducation()Lcom/sponsorpay/user/SPUserEducation;
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "education"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserEducation;

    return-object v0
.end method

.method public static getEthnicity()Lcom/sponsorpay/user/SPUserEthnicity;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ethnicity"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserEthnicity;

    return-object v0
.end method

.method public static getGender()Lcom/sponsorpay/user/SPUserGender;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserGender;

    return-object v0
.end method

.method public static getIap()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIapAmount()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap_amount"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public static getInterests()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "interests"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getLastSession()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "last_session"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    iget-object v0, v0, Lcom/sponsorpay/user/SPUser;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public static getMaritalStatus()Lcom/sponsorpay/user/SPUserMaritalStatus;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "marital_status"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    return-object v0
.end method

.method public static getNumberOfChildrens()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "children"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getNumberOfSessions()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "number_of_sessions"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getPsTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ps_time"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getSexualOrientation()Lcom/sponsorpay/user/SPUserSexualOrientation;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "sexual_orientation"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    return-object v0
.end method

.method private getStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 323
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "%tY/%tm/%td"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 325
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 326
    const-string v1, ","

    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 327
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Landroid/location/Location;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 328
    check-cast v0, Landroid/location/Location;

    .line 329
    .local v0, "location":Landroid/location/Location;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "latitude:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sponsorpay/user/SPUser;->formatInDegrees(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sponsorpay/user/SPUser;->formatInDegrees(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    const-string v2, ",accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 332
    .end local v0    # "location":Landroid/location/Location;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getZipcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "zipcode"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static mapToString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 267
    sget-object v3, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    iget-boolean v3, v3, Lcom/sponsorpay/user/SPUser;->isMapDirty:Z

    if-eqz v3, :cond_0

    .line 268
    const-string v3, "SPUser"

    const-string v4, "SPUser data has changed, recreating..."

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v3, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    invoke-direct {v3}, Lcom/sponsorpay/user/SPUser;->checkAutoLocation()V

    .line 272
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 274
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v3, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    invoke-virtual {v3}, Lcom/sponsorpay/user/SPUser;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "providedData":Ljava/lang/String;
    sget-object v3, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sponsorpay/user/SPUser;->mDataAsString:Ljava/lang/String;

    .line 283
    const-string v3, "SPUser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SPUSer data - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    iget-object v5, v5, Lcom/sponsorpay/user/SPUser;->mDataAsString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v3, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sponsorpay/user/SPUser;->isMapDirty:Z

    .line 288
    :cond_0
    sget-object v3, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    iget-object v3, v3, Lcom/sponsorpay/user/SPUser;->mDataAsString:Ljava/lang/String;

    return-object v3

    .line 274
    .end local v2    # "providedData":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 275
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sponsorpay/user/SPUser;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public static setAge(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "age"    # Ljava/lang/Integer;

    .prologue
    .line 93
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "age"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public static setAnnualHouseholdIncome(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "annualHouseholdIncome"    # Ljava/lang/Integer;

    .prologue
    .line 158
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "annual_household_income"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "app_version"    # Ljava/lang/String;

    .prologue
    .line 246
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public static setBirthdate(Ljava/util/Date;)V
    .locals 2
    .param p0, "birthdate"    # Ljava/util/Date;

    .prologue
    .line 101
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "birthdate"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public static setConnection(Lcom/sponsorpay/user/SPUserConnection;)V
    .locals 2
    .param p0, "connection"    # Lcom/sponsorpay/user/SPUserConnection;

    .prologue
    .line 230
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "connection"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public static setDevice(Ljava/lang/String;)V
    .locals 2
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    .line 238
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public static setEducation(Lcom/sponsorpay/user/SPUserEducation;)V
    .locals 2
    .param p0, "education"    # Lcom/sponsorpay/user/SPUserEducation;

    .prologue
    .line 166
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "education"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public static setEthnicity(Lcom/sponsorpay/user/SPUserEthnicity;)V
    .locals 2
    .param p0, "ethnicity"    # Lcom/sponsorpay/user/SPUserEthnicity;

    .prologue
    .line 125
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ethnicity"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public static setGender(Lcom/sponsorpay/user/SPUserGender;)V
    .locals 2
    .param p0, "gender"    # Lcom/sponsorpay/user/SPUserGender;

    .prologue
    .line 109
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "gender"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static setIap(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "iap"    # Ljava/lang/Boolean;

    .prologue
    .line 190
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public static setIapAmount(Ljava/lang/Float;)V
    .locals 2
    .param p0, "iap_amount"    # Ljava/lang/Float;

    .prologue
    .line 198
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap_amount"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public static setInterests([Ljava/lang/String;)V
    .locals 2
    .param p0, "interests"    # [Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "interests"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public static setLastSession(Ljava/lang/Long;)V
    .locals 2
    .param p0, "last_session"    # Ljava/lang/Long;

    .prologue
    .line 222
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "last_session"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 133
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    iput-object p0, v0, Lcom/sponsorpay/user/SPUser;->mLocation:Landroid/location/Location;

    .line 134
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    invoke-direct {v0, p0}, Lcom/sponsorpay/user/SPUser;->setLocationDetails(Landroid/location/Location;)V

    .line 135
    return-void
.end method

.method private setLocationDetails(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    const-string v0, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sponsorpay/user/SPUser;->formatInDegrees(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v0, "longt"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sponsorpay/user/SPUser;->formatInDegrees(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/user/SPUser;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "longt"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/user/SPUser;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setMaritalStatus(Lcom/sponsorpay/user/SPUserMaritalStatus;)V
    .locals 2
    .param p0, "maritalStatus"    # Lcom/sponsorpay/user/SPUserMaritalStatus;

    .prologue
    .line 142
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "marital_status"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public static setNumberOfChildrens(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "numberOfChildrens"    # Ljava/lang/Integer;

    .prologue
    .line 150
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "children"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public static setNumberOfSessions(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "numberOfSessions"    # Ljava/lang/Integer;

    .prologue
    .line 206
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "number_of_sessions"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public static setPsTime(Ljava/lang/Long;)V
    .locals 2
    .param p0, "ps_time"    # Ljava/lang/Long;

    .prologue
    .line 214
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ps_time"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public static setSexualOrientation(Lcom/sponsorpay/user/SPUserSexualOrientation;)V
    .locals 2
    .param p0, "sexualOrientation"    # Lcom/sponsorpay/user/SPUserSexualOrientation;

    .prologue
    .line 117
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "sexual_orientation"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public static setZipcode(Ljava/lang/String;)V
    .locals 2
    .param p0, "zipcode"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Lcom/sponsorpay/user/SPUser;->singleton:Lcom/sponsorpay/user/SPUser;

    const-string v1, "zipcode"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 341
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 342
    iget-boolean v1, p0, Lcom/sponsorpay/user/SPUser;->isMapDirty:Z

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "oldValue":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sponsorpay/user/SPUser;->isMapDirty:Z

    .line 346
    .end local v0    # "oldValue":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 348
    :goto_1
    return-object v1

    .line 344
    .restart local v0    # "oldValue":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "oldValue":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 353
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    .local v0, "removed":Ljava/lang/Object;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sponsorpay/user/SPUser;->isMapDirty:Z

    .line 355
    return-object v0

    .line 354
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
