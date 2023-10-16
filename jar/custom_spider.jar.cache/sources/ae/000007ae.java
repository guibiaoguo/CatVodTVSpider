package org.bouncycastle.jce.provider;

import com.github.catvod.spider.merge.R1.e;
import com.github.catvod.spider.merge.a.C0133a;
import com.github.catvod.spider.merge.c2.C0170c;
import com.github.catvod.spider.merge.d2.C0177c;
import com.github.catvod.spider.merge.f2.c;
import com.github.catvod.spider.merge.g2.f;
import com.github.catvod.spider.merge.i1.C0258o;
import com.github.catvod.spider.merge.o1.InterfaceC0301a;
import com.github.catvod.spider.merge.r1.C0320b;
import com.github.catvod.spider.merge.r1.InterfaceC0319a;
import com.github.catvod.spider.merge.v1.C0461b;
import java.security.AccessController;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class BouncyCastleProvider extends Provider {
    private static final String ASYMMETRIC_PACKAGE = "org.bouncycastle.jcajce.provider.asymmetric.";
    private static final String DIGEST_PACKAGE = "org.bouncycastle.jcajce.provider.digest.";
    private static final String KEYSTORE_PACKAGE = "org.bouncycastle.jcajce.provider.keystore.";
    private static final String SECURE_RANDOM_PACKAGE = "org.bouncycastle.jcajce.provider.drbg.";
    private static final String SYMMETRIC_PACKAGE = "org.bouncycastle.jcajce.provider.symmetric.";
    private static String info = "BouncyCastle Security Provider v1.68";
    public static final com.github.catvod.spider.merge.F1.a CONFIGURATION = new b();
    private static final Map keyInfoConverters = new HashMap();
    private static final Class revChkClass = com.github.catvod.spider.merge.G1.b.a(BouncyCastleProvider.class, "java.security.cert.PKIXRevocationChecker");
    private static final String[] SYMMETRIC_GENERIC = {"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF", "SCRYPT"};
    private static final String[] SYMMETRIC_MACS = {"SipHash", "SipHash128", "Poly1305"};
    private static final String[] SYMMETRIC_CIPHERS = {"AES", "ARC4", "ARIA", "Blowfish", "Camellia", "CAST5", "CAST6", "ChaCha", "DES", "DESede", "GOST28147", "Grainv1", "Grain128", "HC128", "HC256", "IDEA", "Noekeon", "RC2", "RC5", "RC6", "Rijndael", "Salsa20", "SEED", "Serpent", "Shacal2", "Skipjack", "SM4", "TEA", "Twofish", "Threefish", "VMPC", "VMPCKSA3", "XTEA", "XSalsa20", "OpenSSLPBKDF", "DSTU7624", "GOST3412_2015", "Zuc"};
    private static final String[] ASYMMETRIC_GENERIC = {"X509", "IES", "COMPOSITE"};
    private static final String[] ASYMMETRIC_CIPHERS = {"DSA", "DH", "EC", "RSA", "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM", "EdEC"};
    private static final String[] DIGESTS = {"GOST3411", "Keccak", "MD2", "MD4", "MD5", "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "Blake2s", "DSTU7564", "Haraka"};
    public static final String PROVIDER_NAME = "BC";
    private static final String[] KEYSTORES = {PROVIDER_NAME, "BCFKS", "PKCS12"};
    private static final String[] SECURE_RANDOMS = {"DRBG"};

    public BouncyCastleProvider() {
        super(PROVIDER_NAME, 1.68d, info);
        AccessController.doPrivileged(new a(this));
    }

    private static com.github.catvod.spider.merge.H1.b getAsymmetricKeyInfoConverter(C0258o c0258o) {
        com.github.catvod.spider.merge.H1.b bVar;
        Map map = keyInfoConverters;
        synchronized (map) {
            bVar = (com.github.catvod.spider.merge.H1.b) map.get(c0258o);
        }
        return bVar;
    }

    public static PrivateKey getPrivateKey(C0320b c0320b) {
        com.github.catvod.spider.merge.H1.b asymmetricKeyInfoConverter = getAsymmetricKeyInfoConverter(c0320b.i().g());
        if (asymmetricKeyInfoConverter == null) {
            return null;
        }
        return asymmetricKeyInfoConverter.a(c0320b);
    }

    public static PublicKey getPublicKey(C0461b c0461b) {
        com.github.catvod.spider.merge.H1.b asymmetricKeyInfoConverter = getAsymmetricKeyInfoConverter(c0461b.g().g());
        if (asymmetricKeyInfoConverter == null) {
            return null;
        }
        return asymmetricKeyInfoConverter.b(c0461b);
    }

    private void loadAlgorithms(String str, String[] strArr) {
        for (int i = 0; i != strArr.length; i++) {
            StringBuilder a = C0133a.a(str);
            a.append(strArr[i]);
            a.append("$Mappings");
            Class a2 = com.github.catvod.spider.merge.G1.b.a(BouncyCastleProvider.class, a.toString());
            if (a2 != null) {
                try {
                    ((com.github.catvod.spider.merge.H1.a) a2.newInstance()).a();
                } catch (Exception e) {
                    StringBuilder a3 = com.github.catvod.spider.merge.I.a.a("cannot create instance of ", str);
                    a3.append(strArr[i]);
                    a3.append("$Mappings : ");
                    a3.append(e);
                    throw new InternalError(a3.toString());
                }
            }
        }
    }

    private void loadPQCKeys() {
        addKeyInfoConverter(e.d, new c());
        addKeyInfoConverter(e.e, new C0170c());
        addKeyInfoConverter(e.f, new com.github.catvod.spider.merge.a2.c(1));
        addKeyInfoConverter(InterfaceC0301a.a, new com.github.catvod.spider.merge.a2.c(1));
        addKeyInfoConverter(e.g, new f());
        addKeyInfoConverter(InterfaceC0301a.b, new f());
        addKeyInfoConverter(e.b, new com.github.catvod.spider.merge.b2.f());
        addKeyInfoConverter(e.c, new com.github.catvod.spider.merge.b2.e());
        addKeyInfoConverter(e.a, new com.github.catvod.spider.merge.e2.c());
        addKeyInfoConverter(e.h, new C0177c());
        addKeyInfoConverter(e.i, new C0177c());
        addKeyInfoConverter(InterfaceC0319a.a, new com.github.catvod.spider.merge.a2.c(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setup() {
        String str;
        String str2;
        loadAlgorithms(DIGEST_PACKAGE, DIGESTS);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_GENERIC);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_MACS);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_CIPHERS);
        loadAlgorithms(ASYMMETRIC_PACKAGE, ASYMMETRIC_GENERIC);
        loadAlgorithms(ASYMMETRIC_PACKAGE, ASYMMETRIC_CIPHERS);
        loadAlgorithms(KEYSTORE_PACKAGE, KEYSTORES);
        loadAlgorithms(SECURE_RANDOM_PACKAGE, SECURE_RANDOMS);
        loadPQCKeys();
        put("X509Store.CERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertCollection");
        put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreAttrCertCollection");
        put("X509Store.CRL/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCRLCollection");
        put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertPairCollection");
        put("X509Store.CERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCerts");
        put("X509Store.CRL/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCRLs");
        put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts");
        put("X509Store.CERTIFICATEPAIR/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs");
        put("X509StreamParser.CERTIFICATE", "org.bouncycastle.jce.provider.X509CertParser");
        put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.bouncycastle.jce.provider.X509AttrCertParser");
        put("X509StreamParser.CRL", "org.bouncycastle.jce.provider.X509CRLParser");
        put("X509StreamParser.CERTIFICATEPAIR", "org.bouncycastle.jce.provider.X509CertPairParser");
        put("Cipher.BROKENPBEWITHMD5ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
        put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
        put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
        Class cls = revChkClass;
        put("CertPathValidator.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
        put("CertPathBuilder.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
        if (cls != null) {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8";
        } else {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi";
        }
        put("CertPathBuilder.RFC3280", str2);
        put("CertPathValidator.PKIX", str);
        put("CertPathBuilder.PKIX", str2);
        put("CertStore.Collection", "org.bouncycastle.jce.provider.CertStoreCollectionSpi");
        put("CertStore.LDAP", "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi");
        put("CertStore.Multi", "org.bouncycastle.jce.provider.MultiCertStoreSpi");
        put("Alg.Alias.CertStore.X509LDAP", "LDAP");
    }

    public void addAlgorithm(String str, C0258o c0258o, String str2) {
        addAlgorithm(str + "." + c0258o, str2);
        addAlgorithm(str + ".OID." + c0258o, str2);
    }

    public void addAlgorithm(String str, String str2) {
        if (containsKey(str)) {
            throw new IllegalStateException(com.github.catvod.spider.merge.k.b.b("duplicate provider key (", str, ") found"));
        }
        put(str, str2);
    }

    public void addAttributes(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            String b = com.github.catvod.spider.merge.k.b.b(str, " ", str2);
            if (containsKey(b)) {
                throw new IllegalStateException(com.github.catvod.spider.merge.k.b.b("duplicate provider attribute key (", b, ") found"));
            }
            put(b, map.get(str2));
        }
    }

    public void addKeyInfoConverter(C0258o c0258o, com.github.catvod.spider.merge.H1.b bVar) {
        Map map = keyInfoConverters;
        synchronized (map) {
            map.put(c0258o, bVar);
        }
    }

    public com.github.catvod.spider.merge.H1.b getKeyInfoConverter(C0258o c0258o) {
        return (com.github.catvod.spider.merge.H1.b) keyInfoConverters.get(c0258o);
    }

    public boolean hasAlgorithm(String str, String str2) {
        if (!containsKey(str + "." + str2)) {
            if (!containsKey("Alg.Alias." + str + "." + str2)) {
                return false;
            }
        }
        return true;
    }

    public void setParameter(String str, Object obj) {
        com.github.catvod.spider.merge.F1.a aVar = CONFIGURATION;
        synchronized (aVar) {
            ((b) aVar).b(str, obj);
        }
    }
}