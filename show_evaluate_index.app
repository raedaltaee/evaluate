<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>انفوجرافيك: رحلة تقييم البحث العلمي</title>
    <!-- Chosen Palette: Energetic & Playful (#F94144, #F3722C, #F8961E, #F9C74F, #90BE6D, #43AA8B, #577590) -->
    <!-- Narrative Plan: The infographic follows the journey of a research paper's evaluation, starting with foundational quality pillars (OSR), dissecting the paper's anatomy (IMRAD), comparing journal standards (Scopus/Clarivate), covering ethical checks, and ending with the final review outcomes. This narrative structure transforms the report's content into a logical, digestible story for researchers. -->
    <!-- Visualization Choices: OSR -> Icon Cards (Inform); IMRAD -> HTML/CSS Timeline (Organize); Scopus vs Clarivate -> Radar Chart (Compare - Chart.js, NO SVG); Ethics -> Icon Cards (Inform); Review Outcomes -> Colored Cards (Compare). All methods avoid SVG/Mermaid and are chosen for clarity and visual engagement. -->
    <!-- CONFIRMATION: NO SVG graphics used. NO Mermaid JS used. -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;700;900&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Cairo', sans-serif;
            background-color: #f8f9fa;
            color: #212529;
        }
        .chart-container {
            position: relative;
            width: 100%;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            height: 400px;
            max-height: 500px;
        }
        @media (max-width: 768px) {
            .chart-container {
                height: 350px;
            }
        }
        .hero-title {
            color: #577590;
            font-weight: 900;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }
        .section-title {
            font-weight: 900;
            color: #577590;
            position: relative;
            padding-bottom: 0.5rem;
            margin-bottom: 2rem;
        }
        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            right: 50%;
            transform: translateX(50%);
            width: 80px;
            height: 4px;
            background-color: #F3722C;
            border-radius: 2px;
        }
        .card {
            background-color: white;
            border-radius: 1rem;
            box-shadow: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-top: 5px solid;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);
        }
        .timeline-item {
            position: relative;
            padding-bottom: 2.5rem;
            padding-right: 2.5rem;
        }
        .timeline-item:not(:last-child)::before {
            content: '';
            position: absolute;
            top: 15px;
            right: 13px;
            width: 2px;
            height: 100%;
            background-color: #90BE6D;
        }
        .timeline-dot {
            position: absolute;
            top: 5px;
            right: 0;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: #90BE6D;
            border: 4px solid #f8f9fa;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body class="antialiased">
    <div class="container mx-auto px-4 py-12">

        <header class="text-center mb-16">
            <h1 class="text-4xl md:text-6xl hero-title mb-4">رحلة تقييم البحث العلمي</h1>
            <p class="max-w-3xl mx-auto text-lg text-gray-600">من الفكرة إلى النشر في المجلات العالمية، اكتشف المعايير الأساسية التي تحدد جودة وتأثير الأبحاث العلمية.</p>
        </header>

        <section id="pillars" class="mb-20">
            <h2 class="section-title text-center text-3xl md:text-4xl">الركائز الأساسية للجودة (OSR)</h2>
            <p class="text-center max-w-2xl mx-auto mb-12 text-gray-700">يعتمد أي تقييم بحثي على ثلاثة معايير عالمية مترابطة. هذه المبادئ هي أساس الحكم على جودة أي عمل علمي.</p>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
                <div class="card p-8" style="border-color: #F9C74F;">
                    <span class="text-6xl mb-4 block">💡</span>
                    <h3 class="text-2xl font-bold mb-2" style="color: #F8961E;">الأصالة</h3>
                    <p class="text-gray-600">هل يقدم البحث مساهمة مبتكرة؟ هل يتعامل مع مشاكل جديدة أو يقدم حلولاً إبداعية؟</p>
                </div>
                <div class="card p-8" style="border-color: #90BE6D;">
                    <span class="text-6xl mb-4 block">🎯</span>
                    <h3 class="text-2xl font-bold mb-2" style="color: #43AA8B;">الأهمية</h3>
                    <p class="text-gray-600">هل للبحث تأثير فعلي أو محتمل في مجاله؟ هل يجيب على سؤال "من يهتم؟" لجمهوره المستهدف؟</p>
                </div>
                <div class="card p-8" style="border-color: #F94144;">
                    <span class="text-6xl mb-4 block">⚖️</span>
                    <h3 class="text-2xl font-bold mb-2" style="color: #F3722C;">الدقة</h3>
                    <p class="text-gray-600">هل المنهجية سليمة وقوية؟ هل يمكن تكرار النتائج والتحقق منها؟ هل الحجج متماسكة منطقياً؟</p>
                </div>
            </div>
        </section>

        <section id="anatomy" class="mb-20">
            <h2 class="section-title text-center text-3xl md:text-4xl">تشريح المخطوطة العلمية</h2>
            <p class="text-center max-w-2xl mx-auto mb-12 text-gray-700">تخضع كل مخطوطة لتقييم دقيق لكل قسم من أقسامها. هذا هو المسار الذي يتبعه المراجعون لضمان جودة كل مكون.</p>
            <div class="max-w-3xl mx-auto">
                <div class="timeline-item">
                    <div class="timeline-dot">1</div>
                    <h3 class="text-xl font-bold mb-2" style="color: #43AA8B;">المقدمة</h3>
                    <p class="text-gray-600">يجب أن توضح أساس الدراسة، تحدد الفجوة المعرفية، وتصيغ أهدافًا واضحة ومحددة.</p>
                </div>
                <div class="timeline-item">
                    <div class="timeline-dot">2</div>
                    <h3 class="text-xl font-bold mb-2" style="color: #43AA8B;">المنهجية</h3>
                    <p class="text-gray-600">يجب أن تكون مفصلة بما يكفي للسماح بالتكرار، مع تبرير حجم العينة وأدوات التحليل وتقنيات تقليل التحيز.</p>
                </div>
                 <div class="timeline-item">
                    <div class="timeline-dot">3</div>
                    <h3 class="text-xl font-bold mb-2" style="color: #43AA8B;">النتائج</h3>
                    <p class="text-gray-600">يجب عرضها بوضوح وموضوعية، مدعومة بجداول وأشكال بيانية دقيقة تجيب على سؤال البحث.</p>
                </div>
                 <div class="timeline-item">
                    <div class="timeline-dot">4</div>
                    <h3 class="text-xl font-bold mb-2" style="color: #43AA8B;">المناقشة</h3>
                    <p class="text-gray-600">يجب أن تفسر النتائج في سياق الأدبيات السابقة، تعترف بالقيود، وتبرر الاستنتاجات بالبيانات المقدمة.</p>
                </div>
                 <div class="timeline-item">
                    <div class="timeline-dot">5</div>
                    <h3 class="text-xl font-bold mb-2" style="color: #43AA8B;">الخلاصة والمراجع</h3>
                    <p class="text-gray-600">استنتاجات مبررة بالنتائج، وقائمة مراجع حديثة وذات صلة تعكس دقة التعامل مع الأدبيات.</p>
                </div>
            </div>
        </section>

        <section id="standards" class="mb-20">
             <h2 class="section-title text-center text-3xl md:text-4xl">معايير حراس البوابة: Scopus مقابل Clarivate</h2>
             <p class="text-center max-w-3xl mx-auto mb-12 text-gray-700">لكي تصل الأبحاث إلى جمهور عالمي، يجب نشرها في مجلات مفهرسة. تستخدم سكوباس وكلاريفيت معايير صارمة لتقييم المجلات، مع وجود نقاط تركيز مختلفة.</p>
             <div class="chart-container">
                <canvas id="standardsChart"></canvas>
             </div>
        </section>

        <section id="ethics" class="mb-20">
            <h2 class="section-title text-center text-3xl md:text-4xl">البوصلة الأخلاقية للباحث</h2>
            <p class="text-center max-w-2xl mx-auto mb-12 text-gray-700">النزاهة هي جوهر البحث العلمي. هذه المبادئ الأخلاقية ليست مجرد قواعد، بل هي أساس ضمان موثوقية وصحة النتائج.</p>
            <div class="grid grid-cols-2 md:grid-cols-3 gap-6 text-center">
                <div class="bg-white p-6 rounded-lg shadow-sm">
                    <span class="text-4xl mb-2 block">🤝</span>
                    <h4 class="font-bold">الموافقة المستنيرة</h4>
                </div>
                 <div class="bg-white p-6 rounded-lg shadow-sm">
                    <span class="text-4xl mb-2 block">🔒</span>
                    <h4 class="font-bold">السرية والخصوصية</h4>
                </div>
                 <div class="bg-white p-6 rounded-lg shadow-sm">
                    <span class="text-4xl mb-2 block">🛡️</span>
                    <h4 class="font-bold">عدم الإضرار</h4>
                </div>
                 <div class="bg-white p-6 rounded-lg shadow-sm">
                    <span class="text-4xl mb-2 block">⚖️</span>
                    <h4 class="font-bold">العدالة</h4>
                </div>
                 <div class="bg-white p-6 rounded-lg shadow-sm">
                    <span class="text-4xl mb-2 block">🔍</span>
                    <h4 class="font-bold">النزاهة والشفافية</h4>
                </div>
                 <div class="bg-white p-6 rounded-lg shadow-sm">
                    <span class="text-4xl mb-2 block">📜</span>
                    <h4 class="font-bold">موافقة IRB</h4>
                </div>
            </div>
        </section>

        <section id="decision">
            <h2 class="section-title text-center text-3xl md:text-4xl">الحكم النهائي: قرارات المراجعين</h2>
            <p class="text-center max-w-2xl mx-auto mb-12 text-gray-700">بعد التقييم الدقيق، يصدر المراجعون حكمهم. كل قرار يمثل خطوة في عملية تحسين المخطوطة وصولاً إلى النشر.</p>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="card p-6 text-center" style="border-color: #90BE6D;">
                    <h3 class="text-2xl font-bold mb-2" style="color: #90BE6D;">قبول</h3>
                    <p class="text-gray-600">الورقة ممتازة ومناسبة للنشر كما هي. (نادر الحدوث)</p>
                </div>
                <div class="card p-6 text-center" style="border-color: #F9C74F;">
                    <h3 class="text-2xl font-bold mb-2" style="color: #F9C74F;">مراجعة طفيفة</h3>
                    <p class="text-gray-600">الورقة جيدة ولكنها تحتاج لتعديلات طفيفة قبل النشر.</p>
                </div>
                <div class="card p-6 text-center" style="border-color: #F3722C;">
                    <h3 class="text-2xl font-bold mb-2" style="color: #F3722C;">مراجعة رئيسية</h3>
                    <p class="text-gray-600">هناك حاجة لتغييرات جوهرية في المحتوى أو التحليل.</p>
                </div>
                <div class="card p-6 text-center" style="border-color: #F94144;">
                    <h3 class="text-2xl font-bold mb-2" style="color: #F94144;">رفض</h3>
                    <p class="text-gray-600">الورقة غير مناسبة للنشر بسبب عيوب أساسية.</p>
                </div>
            </div>
        </section>

    </div>

    <footer class="text-center py-8 mt-12 bg-gray-800 text-white">
        <p>&copy; 2025 انفوجرافيك تقييم البحث العلمي. تم تصميمه لتبسيط معايير النشر الأكاديمي.</p>
        <p class="mt-2">المصمم: رائد ابراهيم خليل (ماجستير هندسة اتصالات)</p>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ctx = document.getElementById('standardsChart').getContext('2d');
            const standardsChart = new Chart(ctx, {
                type: 'radar',
                data: {
                    labels: [
                        'مراجعة الأقران', 
                        'جودة المحتوى', 
                        'الأخلاقيات', 
                        ['السياسة', 'التحريرية'], 
                        'التأثير والاستشهاد', 
                        ['الانتظام', 'والتوفر']
                    ],
                    datasets: [{
                        label: 'سكوباس',
                        data: [5, 4, 4, 4, 3, 5],
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        pointBackgroundColor: 'rgba(75, 192, 192, 1)',
                        pointBorderColor: '#fff',
                        pointHoverBackgroundColor: '#fff',
                        pointHoverBorderColor: 'rgba(75, 192, 192, 1)',
                        borderColor: '#43AA8B',
                        backgroundColor: 'rgba(67, 170, 139, 0.2)',
                    }, {
                        label: 'كلاريفيت',
                        data: [5, 5, 5, 4, 5, 4],
                        backgroundColor: 'rgba(255, 159, 64, 0.2)',
                        borderColor: 'rgba(255, 159, 64, 1)',
                        pointBackgroundColor: 'rgba(255, 159, 64, 1)',
                        pointBorderColor: '#fff',
                        pointHoverBackgroundColor: '#fff',
                        pointHoverBorderColor: 'rgba(255, 159, 64, 1)',
                        borderColor: '#F94144',
                        backgroundColor: 'rgba(249, 65, 68, 0.2)',
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    scales: {
                        r: {
                            angleLines: {
                                color: 'rgba(0, 0, 0, 0.1)'
                            },
                            grid: {
                                color: 'rgba(0, 0, 0, 0.1)'
                            },
                            pointLabels: {
                                font: {
                                    size: 13,
                                    family: "'Cairo', sans-serif",
                                    weight: 'bold'
                                },
                                color: '#577590'
                            },
                            ticks: {
                                backdropColor: '#f8f9fa',
                                color: '#888',
                                stepSize: 1
                            },
                            suggestedMin: 0,
                            suggestedMax: 5
                        }
                    },
                    plugins: {
                        legend: {
                            position: 'top',
                             labels: {
                                font: {
                                    size: 14,
                                    family: "'Cairo', sans-serif"
                                }
                            }
                        },
                        tooltip: {
                            callbacks: {
                                title: function(tooltipItems) {
                                    const item = tooltipItems[0];
                                    let label = item.chart.data.labels[item.dataIndex];
                                    if (Array.isArray(label)) {
                                      return label.join(' ');
                                    } else {
                                      return label;
                                    }
                                }
                            }
                        }
                    }
                }
            });
        });
    </script>
</body>
</html>
