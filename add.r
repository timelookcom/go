 <div class="settings-button" id="language-button">
                    <i class="fas fa-language"></i> Language
                </div>
                <div id="language-container" style="display: none;">
                    <span id="close-language-button" style="cursor: pointer; float: right;">✖</span>
                    <h4>Select Language</h4>
                    <div class="language-options" style="max-height: 200px; overflow-y: auto;">
                        <div class="language-option">
                            <input type="radio" id="lang-en" name="language" value="en" checked>
                            <label for="lang-en">English</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-es" name="language" value="es">
                            <label for="lang-es">Spanish</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-fr" name="language" value="fr">
                            <label for="lang-fr">French</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-de" name="language" value="de">
                            <label for="lang-de">German</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-zh" name="language" value="zh">
                            <label for="lang-zh">Chinese</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-ja" name="language" value="ja">
                            <label for="lang-ja">Japanese</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-ru" name="language" value="ru">
                            <label for="lang-ru">Russian</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-ar" name="language" value="ar">
                            <label for="lang-ar">Arabic</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-it" name="language" value="it">
                            <label for="lang-it">Italian</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-pt" name="language" value="pt">
                            <label for="lang-pt">Portuguese</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-nl" name="language" value="nl">
                            <label for="lang-nl">Dutch</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-vi" name="language" value="vi">
                            <label for="lang-vi">Vietnamese</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-th" name="language" value="th">
                            <label for="lang-th">Thai</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-hi" name="language" value="hi">
                            <label for="lang-hi">Hindi</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-bn" name="language" value="bn">
                            <label for="lang-bn">Bengali</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-tl" name="language" value="tl">
                            <label for="lang-tl">Filipino</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-ms" name="language" value="ms">
                            <label for="lang-ms">Malay</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-cs" name="language" value="cs">
                            <label for="lang-cs">Czech</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-da" name="language" value="da">
                            <label for="lang-da">Danish</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-fi" name="language" value="fi">
                            <label for="lang-fi">Finnish</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-sv" name="language" value="sv">
                            <label for="lang-sv">Swedish</label>
                        </div>
                        <div class="language-option">
                            <input type="radio" id="lang-no" name="language" value="no">
                            <label for="lang-no">Norwegian</label>
                        </div>
                    </div>
                </div>
                
                <style>
                    #language-container {
                        border: none;
                        padding: 20px;
                        background-color: black;
                        position: fixed;
                        color: aliceblue;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        z-index: 1000;
                        
                        width: 300px; /* Adjust width as needed */
                        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                        border-radius: 8px;
                    }
                
                    #close-language-button {
                        font-size: 18px;
                        color: white;
                    }
                
                    .language-option {
                        margin: 10px 0;
                    }
                
                    .language-options {
                        max-height: 200px;
                        font-size: 20px; /* Limit height for scrolling */
                        overflow-y: auto; /* Enable vertical scrolling */
                    }
                    .language-radio{
                        font-size: 33px;
                    }
                </style>
                
                <script>
                // Content mapping for different languages
                const content = {
                    en: {
                        title: "Welcome to Cool Custom Search Browser!",
                        searchPlaceholder: "Search or enter URL",
                        backButton: "Go Back",
                        forwardButton: "Go Forward",
                        reloadButton: "Reload",
                        micButton: "Voice Search",
                        savedLinks: "Show Saved Links",
                        privacy: "Privacy",
                        store: "Store",
                    },
                    es: {
                        title: "¡Bienvenido al navegador de búsqueda personalizado y genial!",
                        searchPlaceholder: "Buscar o ingresar URL",
                        backButton: "Regresar",
                        forwardButton: "Avanzar",
                        reloadButton: "Recargar",
                        micButton: "Búsqueda por voz",
                        savedLinks: "Mostrar enlaces guardados",
                        privacy: "Privacidad",
                        store: "Tienda",
                    },
                    fr: {
                        title: "Bienvenue dans le navigateur de recherche personnalisé et cool !",
                        searchPlaceholder: "Rechercher ou entrer l'URL",
                        backButton: "Retourner",
                        forwardButton: "Aller de l'avant",
                        reloadButton: "Recharger",
                        micButton: "Recherche vocale",
                        savedLinks: "Afficher les liens sauvegardés",
                        privacy: "Confidentialité",
                        store: "Magasin",
                    },
                    de: {
                        title: "Willkommen im coolen benutzerdefinierten Suchbrowser!",
                        searchPlaceholder: "Suchen oder URL eingeben",
                        backButton: "Zurück",
                        forwardButton: "Vorwärts",
                        reloadButton: "Neu laden",
                        micButton: "Sprachsuche",
                        savedLinks: "Gespeicherte Links anzeigen",
                        privacy: "Datenschutz",
                        store: "Geschäft",
                    },
                    zh: {
                        title: "欢迎使用酷炫自定义搜索浏览器！",
                        searchPlaceholder: "搜索或输入网址",
                        backButton: "返回",
                        forwardButton: "前进",
                        reloadButton: "重载",
                        micButton: "语音搜索",
                        savedLinks: "显示已保存的链接",
                        privacy: "隐私",
                        store: "商店",
                    },
                    ja: {
                        title: "クールなカスタム検索ブラウザへようこそ！",
                        searchPlaceholder: "検索またはURLを入力",
                        backButton: "戻る",
                        forwardButton: "進む",
                        reloadButton: "リロード",
                        micButton: "音声検索",
                        savedLinks: "保存したリンクを表示",
                        privacy: "プライバシー",
                        store: "ストア",
                    },
                    ru: {
                        title: "Добро пожаловать в крутую поисковую браузерную систему!",
                        searchPlaceholder: "Поиск или введите URL",
                        backButton: "Назад",
                        forwardButton: "Вперед",
                        reloadButton: "Перезагрузить",
                        micButton: "Голосовой поиск",
                        savedLinks: "Показать сохраненные ссылки",
                        privacy: "Конфиденциальность",
                        store: "Магазин",
                    },
                    ar: {
                        title: "مرحبًا بك في متصفح البحث المخصص الرائع!",
                        searchPlaceholder: "ابحث أو أدخل عنوان URL",
                        backButton: "العودة",
                        forwardButton: "التقدم",
                        reloadButton: "إعادة تحميل",
                        micButton: "بحث صوتي",
                        savedLinks: "عرض الروابط المحفوظة",
                        privacy: "خصوصية",
                        store: "متجر",
                    },
                    it: {
                        title: "Benvenuto nel fantastico browser di ricerca personalizzato!",
                        searchPlaceholder: "Cerca o inserisci l'URL",
                        backButton: "Indietro",
                        forwardButton: "Avanti",
                        reloadButton: "Ricarica",
                        micButton: "Ricerca vocale",
                        savedLinks: "Mostra link salvati",
                        privacy: "Privacy",
                        store: "Negozio",
                    },
                    pt: {
                        title: "Bem-vindo ao incrível navegador de busca personalizado!",
                        searchPlaceholder: "Pesquisar ou inserir URL",
                        backButton: "Voltar",
                        forwardButton: "Avançar",
                        reloadButton: "Recarregar",
                        micButton: "Pesquisa por voz",
                        savedLinks: "Mostrar links salvos",
                        privacy: "Privacidade",
                        store: "Loja",
                    },
                    nl: {
                        title: "Welkom bij de coole aangepaste zoekbrowser!",
                        searchPlaceholder: "Zoeken of URL invoeren",
                        backButton: "Teruggaan",
                        forwardButton: "Doorgaan",
                        reloadButton: "Vernieuwen",
                        micButton: "Stemzoekfunctie",
                        savedLinks: "Toon opgeslagen links",
                        privacy: "Privacy",
                        store: "Winkel",
                    },
                    vi: {
                        title: "Chào mừng bạn đến với trình duyệt tìm kiếm tùy chỉnh tuyệt vời!",
                        searchPlaceholder: "Tìm kiếm hoặc nhập URL",
                        backButton: "Quay lại",
                        forwardButton: "Tiến tới",
                        reloadButton: "Tải lại",
                        micButton: "Tìm kiếm bằng giọng nói",
                        savedLinks: "Hiển thị liên kết đã lưu",
                        privacy: "Quyền riêng tư",
                        store: "Cửa hàng",
                    },
                    th: {
                        title: "ยินดีต้อนรับสู่เบราว์เซอร์ค้นหาที่กำหนดเองที่เจ๋ง!",
                        searchPlaceholder: "ค้นหาหรือป้อน URL",
                        backButton: "ย้อนกลับ",
                        forwardButton: "ไปข้างหน้า",
                        reloadButton: "โหลดใหม่",
                        micButton: "ค้นหาด้วยเสียง",
                        savedLinks: "แสดงลิงก์ที่บันทึกไว้",
                        privacy: "ความเป็นส่วนตัว",
                        store: "ร้านค้า",
                    },
                    hi: {
                        title: "कूल कस्टम सर्च ब्राउज़र में आपका स्वागत है!",
                        searchPlaceholder: "खोजें या URL दर्ज करें",
                        backButton: "वापस जाओ",
                        forwardButton: "आगे बढ़ें",
                        reloadButton: "पुनः लोड करें",
                        micButton: "वॉइस सर्च",
                        savedLinks: "सहेजे गए लिंक दिखाएँ",
                        privacy: "गोपनीयता",
                        store: "दुकान",
                    },
                    bn: {
                        title: "কুল কাস্টম সার্চ ব্রাউজারে স্বাগতম!",
                        searchPlaceholder: "সার্চ করুন অথবা URL প্রবেশ করান",
                        backButton: "পেছনে যান",
                        forwardButton: "অগ্রসর হন",
                        reloadButton: "পুনরায় লোড করুন",
                        micButton: "ভয়েস সার্চ",
                        savedLinks: "সংরক্ষিত লিঙ্ক দেখান",
                        privacy: "গোপনীয়তা",
                        store: "দোকান",
                    },
                    tl: {
                        title: "Maligayang pagdating sa cool na customized search browser!",
                        searchPlaceholder: "Maghanap o mag-enter ng URL",
                        backButton: "Bumalik",
                        forwardButton: "Sulong",
                        reloadButton: "I-reload",
                        micButton: "Boses na Paghahanap",
                        savedLinks: "Ipakita ang Naka-save na mga Link",
                        privacy: "Pribasiya",
                        store: "Tindahan",
                    },
                    ms: {
                        title: "Selamat datang di pelayar carian tersuai yang hebat!",
                        searchPlaceholder: "Cari atau masukkan URL",
                        backButton: "Kembali",
                        forwardButton: "Ke Hadapan",
                        reloadButton: "Muat Semula",
                        micButton: "Carian Suara",
                        savedLinks: "Tunjukkan Pautan Simpanan",
                        privacy: "Privasi",
                        store: "Kedai",
                    },
                    cs: {
                        title: "Vítejte v cool přizpůsobeném vyhledávacím prohlížeči!",
                        searchPlaceholder: "Hledat nebo zadat URL",
                        backButton: "Vrátit se",
                        forwardButton: "Pokračovat",
                        reloadButton: "Obnovit",
                        micButton: "Hlasové vyhledávání",
                        savedLinks: "Zobrazit uložené odkazy",
                        privacy: "Ochrana soukromí",
                        store: "Obchod",
                    },
                    da: {
                        title: "Velkommen til den fede tilpassede søgebrowser!",
                        searchPlaceholder: "Søg eller indtast URL",
                        backButton: "Gå tilbage",
                        forwardButton: "Gå videre",
                        reloadButton: "Genindlæs",
                        micButton: "Stemmesøgning",
                        savedLinks: "Vis gemte links",
                        privacy: "Privatliv",
                        store: "Butik",
                    },
                    fi: {
                        title: "Tervetuloa hienoon mukautettuun hakuselaimeen!",
                        searchPlaceholder: "Hae tai syötä URL",
                        backButton: "Palaa takaisin",
                        forwardButton: "Eteenpäin",
                        reloadButton: "Lataa uudelleen",
                        micButton: "Äänihaku",
                        savedLinks: "Näytä tallennetut linkit",
                        privacy: "Yksityisyys",
                        store: "Kauppa",
                    },
                    sv: {
                        title: "Välkommen till den coola anpassade sökwebbläsaren!",
                        searchPlaceholder: "Sök eller ange URL",
                        backButton: "Gå tillbaka",
                        forwardButton: "Gå framåt",
                        reloadButton: "Ladda om",
                        micButton: "Röst Sök",
                        savedLinks: "Visa sparade länkar",
                        privacy: "Sekretess",
                        store: "Butik",
                    },
                    no: {
                        title: "Velkommen til den kule tilpassede søkebrowseren!",
                        searchPlaceholder: "Søk eller skriv inn URL",
                        backButton: "Gå tilbake",
                        forwardButton: "Gå videre",
                        reloadButton: "Last inn på nytt",
                        micButton: "Talestyrt søk",
                        savedLinks: "Vis lagrede lenker",
                        privacy: "Personvern",
                        store: "Butikk",
                    },
                };
                
                // Initialize language container and buttons
                const languageButton = document.getElementById('language-button');
                const languageContainer = document.getElementById('language-container');
                const closeLanguageButton = document.getElementById('close-language-button');
                
                // Toggle language container visibility
                languageButton.addEventListener('click', () => {
                    languageContainer.style.display = languageContainer.style.display === 'none' ? 'block' : 'none';
                });
                
                // Change content based on selected language
                document.querySelectorAll('input[name="language"]').forEach(input => {
                    input.addEventListener('change', (event) => {
                        const selectedLanguage = event.target.value;
                
                        // Update page title
                        document.title = content[selectedLanguage].title;
                
                        // Update other elements (assumed to exist)
                        document.querySelector('#search-input').placeholder = content[selectedLanguage].searchPlaceholder;
                        document.querySelector('#back-button').setAttribute('aria-label', content[selectedLanguage].backButton);
                        document.querySelector('#forward-button').setAttribute('aria-label', content[selectedLanguage].forwardButton);
                        document.querySelector('#reload-button').setAttribute('aria-label', content[selectedLanguage].reloadButton);
                        document.querySelector('#mic-button').setAttribute('aria-label', content[selectedLanguage].micButton);
                        document.querySelector('#star-button').setAttribute('aria-label', content[selectedLanguage].savedLinks);
                        document.querySelector('#security').setAttribute('aria-label', content[selectedLanguage].privacy);
                        document.querySelector('#store').setAttribute('aria-label', content[selectedLanguage].store);
                    });
                });
                
                // Close language selection
                closeLanguageButton.addEventListener('click', () => {
                    languageContainer.style.display = 'none';
                });
                
                // Add event listeners for existing buttons
                document.addEventListener('DOMContentLoaded', function() {
                    const backButton = document.getElementById('back-button');
                    const forwardButton = document.getElementById('forward-button');
                    const reloadButton = document.getElementById('reload-button');
                    const resultFrame = document.getElementById('result-frame');
                
                    backButton.addEventListener('click', function() {
                        resultFrame.contentWindow.history.back();
                    });
                
                    forwardButton.addEventListener('click', function() {
                        resultFrame.contentWindow.history.forward();
                    });
                
                    reloadButton.addEventListener('click', function() {
                        resultFrame.contentWindow.location.reload();
                    });
                
                    // Load data from localStorage if needed
                    loadFromLocalStorage();
                });









                   fr: {
                        title: "Bienvenue dans le navigateur de recherche personnalisé et cool !",
                        searchPlaceholder: "Rechercher ou entrer l'URL",
                        backButton: "Retourner",
                        forwardButton: "Aller de l'avant",
                        reloadButton: "Recharger",
                        micButton: "Recherche vocale",
                        savedLinks: "Afficher les liens sauvegardés",
                        privacy: "Confidentialité",
                        store: "Magasin",
                    },
                    de: {
                        title: "Willkommen im coolen benutzerdefinierten Suchbrowser!",
                        searchPlaceholder: "Suchen oder URL eingeben",
                        backButton: "Zurück",
                        forwardButton: "Vorwärts",
                        reloadButton: "Neu laden",
                        micButton: "Sprachsuche",
                        savedLinks: "Gespeicherte Links anzeigen",
                        privacy: "Datenschutz",
                        store: "Geschäft",
                    },
                    zh: {
                        title: "欢迎使用酷炫自定义搜索浏览器！",
                        searchPlaceholder: "搜索或输入网址",
                        backButton: "返回",
                        forwardButton: "前进",
                        reloadButton: "重载",
                        micButton: "语音搜索",
                        savedLinks: "显示已保存的链接",
                        privacy: "隐私",
                        store: "商店",
                    },
                    ja: {
                        title: "クールなカスタム検索ブラウザへようこそ！",
                        searchPlaceholder: "検索またはURLを入力",
                        backButton: "戻る",
                        forwardButton: "進む",
                        reloadButton: "リロード",
                        micButton: "音声検索",
                        savedLinks: "保存したリンクを表示",
                        privacy: "プライバシー",
                        store: "ストア",
                    },
                    ru: {
                        title: "Добро пожаловать в крутую поисковую браузерную систему!",
                        searchPlaceholder: "Поиск или введите URL",
                        backButton: "Назад",
                        forwardButton: "Вперед",
                        reloadButton: "Перезагрузить",
                        micButton: "Голосовой поиск",
                        savedLinks: "Показать сохраненные ссылки",
                        privacy: "Конфиденциальность",
                        store: "Магазин",
                    },
                    ar: {
                        title: "مرحبًا بك في متصفح البحث المخصص الرائع!",
                        searchPlaceholder: "ابحث أو أدخل عنوان URL",
                        backButton: "العودة",
                        forwardButton: "التقدم",
                        reloadButton: "إعادة تحميل",
                        micButton: "بحث صوتي",
                        savedLinks: "عرض الروابط المحفوظة",
                        privacy: "خصوصية",
                        store: "متجر",
                    },
                    it: {
                        title: "Benvenuto nel fantastico browser di ricerca personalizzato!",
                        searchPlaceholder: "Cerca o inserisci l'URL",
                        backButton: "Indietro",
                        forwardButton: "Avanti",
                        reloadButton: "Ricarica",
                        micButton: "Ricerca vocale",
                        savedLinks: "Mostra link salvati",
                        privacy: "Privacy",
                        store: "Negozio",
                    },
                    pt: {
                        title: "Bem-vindo ao incrível navegador de busca personalizado!",
                        searchPlaceholder: "Pesquisar ou inserir URL",
                        backButton: "Voltar",
                        forwardButton: "Avançar",
                        reloadButton: "Recarregar",
                        micButton: "Pesquisa por voz",
                        savedLinks: "Mostrar links salvos",
                        privacy: "Privacidade",
                        store: "Loja",
                    },
                    nl: {
                        title: "Welkom bij de coole aangepaste zoekbrowser!",
                        searchPlaceholder: "Zoeken of URL invoeren",
                        backButton: "Teruggaan",
                        forwardButton: "Doorgaan",
                        reloadButton: "Vernieuwen",
                        micButton: "Stemzoekfunctie",
                        savedLinks: "Toon opgeslagen links",
                        privacy: "Privacy",
                        store: "Winkel",
                    },
                    vi: {
                        title: "Chào mừng bạn đến với trình duyệt tìm kiếm tùy chỉnh tuyệt vời!",
                        searchPlaceholder: "Tìm kiếm hoặc nhập URL",
                        backButton: "Quay lại",
                        forwardButton: "Tiến tới",
                        reloadButton: "Tải lại",
                        micButton: "Tìm kiếm bằng giọng nói",
                        savedLinks: "Hiển thị liên kết đã lưu",
                        privacy: "Quyền riêng tư",
                        store: "Cửa hàng",
                    },
                    th: {
                        title: "ยินดีต้อนรับสู่เบราว์เซอร์ค้นหาที่กำหนดเองที่เจ๋ง!",
                        searchPlaceholder: "ค้นหาหรือป้อน URL",
                        backButton: "ย้อนกลับ",
                        forwardButton: "ไปข้างหน้า",
                        reloadButton: "โหลดใหม่",
                        micButton: "ค้นหาด้วยเสียง",
                        savedLinks: "แสดงลิงก์ที่บันทึกไว้",
                        privacy: "ความเป็นส่วนตัว",
                        store: "ร้านค้า",
                    },
                    hi: {
                        title: "कूल कस्टम सर्च ब्राउज़र में आपका स्वागत है!",
                        searchPlaceholder: "खोजें या URL दर्ज करें",
                        backButton: "वापस जाओ",
                        forwardButton: "आगे बढ़ें",
                        reloadButton: "पुनः लोड करें",
                        micButton: "वॉइस सर्च",
                        savedLinks: "सहेजे गए लिंक दिखाएँ",
                        privacy: "गोपनीयता",
                        store: "दुकान",
                    },
                    bn: {
                        title: "কুল কাস্টম সার্চ ব্রাউজারে স্বাগতম!",
                        searchPlaceholder: "সার্চ করুন অথবা URL প্রবেশ করান",
                        backButton: "পেছনে যান",
                        forwardButton: "অগ্রসর হন",
                        reloadButton: "পুনরায় লোড করুন",
                        micButton: "ভয়েস সার্চ",
                        savedLinks: "সংরক্ষিত লিঙ্ক দেখান",
                        privacy: "গোপনীয়তা",
                        store: "দোকান",
                    },
                    tl: {
                        title: "Maligayang pagdating sa cool na customized search browser!",
                        searchPlaceholder: "Maghanap o mag-enter ng URL",
                        backButton: "Bumalik",
                        forwardButton: "Sulong",
                        reloadButton: "I-reload",
                        micButton: "Boses na Paghahanap",
                        savedLinks: "Ipakita ang Naka-save na mga Link",
                        privacy: "Pribasiya",
                        store: "Tindahan",
                    },
                    ms: {
                        title: "Selamat datang di pelayar carian tersuai yang hebat!",
                        searchPlaceholder: "Cari atau masukkan URL",
                        backButton: "Kembali",
                        forwardButton: "Ke Hadapan",
                        reloadButton: "Muat Semula",
                        micButton: "Carian Suara",
                        savedLinks: "Tunjukkan Pautan Simpanan",
                        privacy: "Privasi",
                        store: "Kedai",
                    },
                    cs: {
                        title: "Vítejte v cool přizpůsobeném vyhledávacím prohlížeči!",
                        searchPlaceholder: "Hledat nebo zadat URL",
                        backButton: "Vrátit se",
                        forwardButton: "Pokračovat",
                        reloadButton: "Obnovit",
                        micButton: "Hlasové vyhledávání",
                        savedLinks: "Zobrazit uložené odkazy",
                        privacy: "Ochrana soukromí",
                        store: "Obchod",
                    },
                    da: {
                        title: "Velkommen til den fede tilpassede søgebrowser!",
                        searchPlaceholder: "Søg eller indtast URL",
                        backButton: "Gå tilbage",
                        forwardButton: "Gå videre",
                        reloadButton: "Genindlæs",
                        micButton: "Stemmesøgning",
                        savedLinks: "Vis gemte links",
                        privacy: "Privatliv",
                        store: "Butik",
                    },
                    fi: {
                        title: "Tervetuloa hienoon mukautettuun hakuselaimeen!",
                        searchPlaceholder: "Hae tai syötä URL",
                        backButton: "Palaa takaisin",
                        forwardButton: "Eteenpäin",
                        reloadButton: "Lataa uudelleen",
                        micButton: "Äänihaku",
                        savedLinks: "Näytä tallennetut linkit",
                        privacy: "Yksityisyys",
                        store: "Kauppa",
                    },
                    sv: {
                        title: "Välkommen till den coola anpassade sökwebbläsaren!",
                        searchPlaceholder: "Sök eller ange URL",
                        backButton: "Gå tillbaka",
                        forwardButton: "Gå framåt",
                        reloadButton: "Ladda om",
                        micButton: "Röst Sök",
                        savedLinks: "Visa sparade länkar",
                        privacy: "Sekretess",
                        store: "Butik",
                    },
                    no: {
                        title: "Velkommen til den kule tilpassede søkebrowseren!",
                        searchPlaceholder: "Søk eller skriv inn URL",
                        backButton: "Gå tilbake",
                        forwardButton: "Gå videre",
                        reloadButton: "Last inn på nytt",
                        micButton: "Talestyrt søk",
                        savedLinks: "Vis lagrede lenker",
                        privacy: "Personvern",
                        store: "Butikk",