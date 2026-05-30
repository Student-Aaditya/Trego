import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import api from '../utils/api';

const V = '#534AB7';
const VL = '#EEEDFE';
const VD = '#3C3489';

const HomePage = () => {
  const navigate = useNavigate();
  const [query, setQuery] = useState('');
  const [waitEmail, setWaitEmail] = useState('');
  const [waitDone, setWaitDone] = useState(false);

  const handleSearch = (e) => {
    e.preventDefault();
    if (query.trim().length >= 2) navigate(`/search?q=${encodeURIComponent(query)}`);
  };

  const handleWaitlist = async (e) => {
    e.preventDefault();
    try {
      await api.post('/waitlist', { email: waitEmail, platform: 'both' });
      setWaitDone(true);
    } catch { setWaitDone(true); }
  };

  return (
    <div style={{ fontFamily: 'Inter, sans-serif', color: '#1a1a1a' }}>

      {/* ── HERO ── */}
      <section style={{ display:'grid', gridTemplateColumns:'1fr 1fr', gap:'2.5rem',
                        alignItems:'center', padding:'3.5rem 2rem 2.5rem', maxWidth:1080, margin:'0 auto' }}>
        <div>
          <div style={pill}>
            <span style={{ width:7, height:7, borderRadius:'50%', background:V, display:'inline-block', marginRight:6 }} />
            Now live — medicine price comparison
          </div>
          <h1 style={{ fontFamily:'Georgia,serif', fontSize:42, lineHeight:1.1, fontWeight:700,
                       letterSpacing:-1, marginBottom:'1.1rem' }}>
            Find the <span style={{ color:V }}>lowest medicine</span> prices near you
          </h1>
          <p style={{ fontSize:15, lineHeight:1.75, color:'#666', marginBottom:'1.75rem', maxWidth:440 }}>
            Trego compares real-time medicine prices across pharmacies — starting with medicines,
            expanding to pathology. Transparent healthcare, finally.
          </p>

          <form onSubmit={handleSearch} style={{ display:'flex', gap:8, marginBottom:'1.5rem' }}>
            <input
              value={query}
              onChange={e => setQuery(e.target.value)}
              placeholder="Search medicine, e.g. Paracetamol..."
              style={{ flex:1, padding:'11px 16px', borderRadius:10, border:'1px solid #d0d0d0',
                       fontSize:14, outline:'none' }}
            />
            <button type="submit" style={{ ...btnPrimary, padding:'11px 24px', fontSize:14 }}>
              Search
            </button>
          </form>

          <div style={{ display:'flex', alignItems:'center', gap:8, fontSize:12, color:'#888' }}>
            <div style={{ display:'flex' }}>
              {['#534AB7','#3C3489','#7F77DD','#AFA9EC'].map((c,i) => (
                <div key={i} style={{ width:24, height:24, borderRadius:'50%', background:c,
                                      border:'2px solid #fff', marginLeft: i ? -7 : 0 }} />
              ))}
            </div>
            Trusted by 40,000+ patients across India
          </div>
        </div>

        {/* Price comparison card */}
        <div style={{ background:'#f8f7ff', borderRadius:18, border:'0.5px solid #e8e8e8', padding:'1.5rem' }}>
          <div style={{ display:'flex', gap:6, marginBottom:'1.25rem' }}>
            <span style={{ ...tabActive }}>Medicines</span>
            <span style={{ ...tabInactive }}>Pathology · soon</span>
          </div>
          <p style={{ fontSize:11, color:'#888', textTransform:'uppercase', letterSpacing:'0.07em', marginBottom:'0.9rem' }}>
            Metformin 500mg — comparing 4 pharmacies
          </p>
          {[
            { init:'MO', name:'MedOne Pharmacy', dist:'0.8 km · verified · in stock', price:'₹38', best:true },
            { init:'AP', name:'Apollo Pharmacy',  dist:'1.4 km · verified',             price:'₹52' },
            { init:'NC', name:'NetMeds Center',   dist:'2.1 km · in stock',             price:'₹59' },
            { init:'GH', name:'Guardian Health',  dist:'3.5 km · limited stock',        price:'₹67' },
          ].map((r) => (
            <div key={r.name} style={{
              display:'flex', alignItems:'center', justifyContent:'space-between',
              padding:'10px 12px', borderRadius:10, marginBottom:7,
              background: r.best ? VL : '#fff',
              border: `0.5px solid ${r.best ? '#7F77DD' : '#e8e8e8'}`,
            }}>
              <div style={{ display:'flex', alignItems:'center', gap:10 }}>
                <div style={{ width:32, height:32, borderRadius:8, background: r.best ? VD : VL,
                              color: r.best ? '#CECBF6' : VD, display:'flex', alignItems:'center',
                              justifyContent:'center', fontSize:10, fontWeight:700 }}>{r.init}</div>
                <div>
                  <div style={{ fontSize:13, fontWeight:500, color: r.best ? VD : '#1a1a1a' }}>{r.name}</div>
                  <div style={{ fontSize:11, color: r.best ? V : '#888' }}>{r.dist}</div>
                </div>
              </div>
              <div style={{ display:'flex', alignItems:'center' }}>
                <span style={{ fontSize:15, fontWeight:700, color: r.best ? VD : '#1a1a1a' }}>{r.price}</span>
                {r.best && <span style={{ fontSize:10, background:V, color:'#fff', padding:'2px 8px',
                                          borderRadius:100, marginLeft:6 }}>Best</span>}
              </div>
            </div>
          ))}
          <div style={{ background:VD, color:'#CECBF6', borderRadius:10, padding:'10px 14px',
                        fontSize:13, display:'flex', justifyContent:'space-between', alignItems:'center', marginTop:'1rem' }}>
            <span>Save up to <strong>₹29</strong> on this strip today</span>
            <span>→</span>
          </div>
        </div>
      </section>

      {/* ── STATS ── */}
      <div style={{ display:'grid', gridTemplateColumns:'repeat(4,1fr)', gap:10,
                    padding:'1.5rem 2rem', maxWidth:1080, margin:'0 auto' }}>
        {[['12,000+','Medicines tracked'],['3,400+','Verified pharmacies'],['40K+','Patients served'],['₹1.8Cr','Saved by patients']].map(([n,l]) => (
          <div key={l} style={{ background:'#f8f7ff', borderRadius:12, padding:'1.1rem 1.25rem', border:'0.5px solid #e8e8e8' }}>
            <div style={{ fontFamily:'Georgia,serif', fontSize:28, fontWeight:700, color:V, marginBottom:2 }}>{n}</div>
            <div style={{ fontSize:12, color:'#888' }}>{l}</div>
          </div>
        ))}
      </div>

      {/* ── CATEGORIES ── */}
      <section style={{ padding:'3rem 2rem', maxWidth:1080, margin:'0 auto' }}>
        <div style={eyebrow}>Our categories</div>
        <h2 style={secTitle}>What you can compare on Trego</h2>
        <p style={secSub}>Rolling out category by category — every comparison is verified and accurate.</p>

        <div style={{ display:'grid', gridTemplateColumns:'1fr 1fr', gap:14 }}>
          {/* Medicines - LIVE */}
          <div style={{ ...catCard, borderColor:'#7F77DD' }}>
            <span style={{ ...ribbon, background:V }}>✓ Live now</span>
            <div style={{ ...catIcon, background:VL, color:V }}>💊</div>
            <h3 style={catTitle}>Medicines</h3>
            <p style={catDesc}>Compare prices of branded and generic medicines across pharmacies. Find the same drug for less — with stock and distance shown upfront.</p>
            <div style={{ display:'flex', flexWrap:'wrap', gap:6, marginBottom:'1rem' }}>
              {['Generic vs branded','Strip price','In-stock filter','12,000+ drugs'].map(t => (
                <span key={t} style={pillTag}>{t}</span>
              ))}
            </div>
            <div style={{ borderTop:'0.5px solid #eee', paddingTop:'0.75rem' }}>
              {[['Paracetamol 500mg','₹12–₹28','₹16'],['Azithromycin 250mg','₹68–₹145','₹77'],['Pantoprazole 40mg','₹42–₹110','₹68']].map(([m,r,s]) => (
                <div key={m} style={{ display:'flex', justifyContent:'space-between', padding:'5px 0', fontSize:12.5 }}>
                  <span>{m}</span><span style={{ color:'#888' }}>{r}</span>
                  <span style={{ color:V, fontWeight:500 }}>Save {s}</span>
                </div>
              ))}
            </div>
            <button onClick={() => navigate('/search')} style={{ ...btnPrimary, width:'100%', marginTop:'1rem', padding:10 }}>
              Compare now →
            </button>
          </div>

          {/* Pathology - SOON */}
          <div style={{ ...catCard, opacity:0.75 }}>
            <span style={{ ...ribbon, background:'#f0f0f0', color:'#888' }}>🕐 Coming soon</span>
            <div style={{ ...catIcon, background:VL, color:V }}>🧪</div>
            <h3 style={catTitle}>Pathology</h3>
            <p style={catDesc}>Compare lab test prices across diagnostic centers near you. From basic blood panels to specialized tests — know the cost before you go.</p>
            <div style={{ display:'flex', flexWrap:'wrap', gap:6, marginBottom:'1rem' }}>
              {['Blood tests','Home collection','NABL labs','Package deals'].map(t => (
                <span key={t} style={pillTag}>{t}</span>
              ))}
            </div>
            <div style={{ borderTop:'0.5px solid #eee', paddingTop:'0.75rem', opacity:0.6 }}>
              {[['CBC (blood count)','₹180–₹450','₹270'],['HbA1c (diabetes)','₹290–₹700','₹410'],['Thyroid (TSH)','₹220–₹580','₹360']].map(([m,r,s]) => (
                <div key={m} style={{ display:'flex', justifyContent:'space-between', padding:'5px 0', fontSize:12.5 }}>
                  <span>{m}</span><span style={{ color:'#888' }}>{r}</span>
                  <span style={{ color:V, fontWeight:500 }}>Save {s}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* ── HOW IT WORKS ── */}
      <section id="how" style={{ background:'#f8f7ff', borderTop:'0.5px solid #e8e8e8',
                                  borderBottom:'0.5px solid #e8e8e8', padding:'3rem 2rem' }}>
        <div style={{ maxWidth:1080, margin:'0 auto' }}>
          <div style={eyebrow}>How it works</div>
          <h2 style={secTitle}>Compare in 4 simple steps</h2>
          <div style={{ display:'grid', gridTemplateColumns:'repeat(4,1fr)', gap:10, marginTop:'2rem' }}>
            {[
              ['01','🔍','Search a medicine','Type any drug name — branded or generic across 12,000+ medicines.'],
              ['02','📍','See nearby prices','Pharmacies sorted by distance with real price, stock, and verification.'],
              ['03','⚖️','Compare & choose','Pick the best combination of price, quality, and proximity.'],
              ['04','📱','Reserve or visit','Reserve at the pharmacy or get it delivered from the app.'],
            ].map(([n, ic, t, d]) => (
              <div key={t} style={{ background:'#fff', borderRadius:14, padding:'1.25rem',
                                    border:'0.5px solid #e8e8e8', position:'relative' }}>
                <div style={{ position:'absolute', bottom:12, right:14, fontSize:36, fontWeight:700,
                              color:'#eee', lineHeight:1 }}>{n}</div>
                <div style={{ width:40, height:40, borderRadius:10, background:VL, display:'flex',
                              alignItems:'center', justifyContent:'center', fontSize:18, marginBottom:'0.9rem' }}>{ic}</div>
                <div style={{ fontSize:13.5, fontWeight:500, marginBottom:5 }}>{t}</div>
                <p style={{ fontSize:12, color:'#888', lineHeight:1.6 }}>{d}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── APP BANNER ── */}
      <section style={{ padding:'2rem 2rem 3rem', maxWidth:1080, margin:'0 auto' }}>
        <div style={{ background:VD, borderRadius:20, padding:'2.25rem 2.5rem',
                      display:'flex', justifyContent:'space-between', alignItems:'center', gap:'2rem' }}>
          <div>
            <h2 style={{ fontFamily:'Georgia,serif', fontSize:26, color:'#EEEDFE', fontWeight:700, marginBottom:'0.5rem' }}>
              Trego app — launching soon
            </h2>
            <p style={{ fontSize:13.5, color:'#AFA9EC', lineHeight:1.65, marginBottom:'1.25rem' }}>
              Medicines today. Pathology next. Register your interest for early access.
            </p>
            {!waitDone ? (
              <form onSubmit={handleWaitlist} style={{ display:'flex', gap:8 }}>
                <input value={waitEmail} onChange={e => setWaitEmail(e.target.value)}
                  type="email" placeholder="your@email.com"
                  style={{ padding:'9px 14px', borderRadius:8, border:'0.5px solid #7F77DD',
                           background:'rgba(255,255,255,0.08)', color:'#EEEDFE', fontSize:13, flex:1, outline:'none' }} />
                <button type="submit" style={{ padding:'9px 18px', borderRadius:8, background:V,
                                               color:'#fff', border:'none', fontSize:13, cursor:'pointer', fontWeight:500 }}>
                  Notify me
                </button>
              </form>
            ) : (
              <div style={{ color:'#9FE1CB', fontSize:14 }}>✅ You're on the list! We'll notify you at launch.</div>
            )}
          </div>
          <div style={{ display:'flex', gap:10, flexShrink:0 }}>
            {['🍎 App Store','▶ Google Play'].map(s => (
              <button key={s} style={{ padding:'10px 16px', borderRadius:10, border:'0.5px solid #7F77DD',
                                       background:'transparent', color:'#CECBF6', fontSize:13, cursor:'pointer' }}>{s}</button>
            ))}
          </div>
        </div>
      </section>
    </div>
  );
};

// Shared style objects
const pill = { display:'inline-flex', alignItems:'center', gap:6, background:VL, color:V,
               fontSize:11.5, fontWeight:500, padding:'5px 12px', borderRadius:100, marginBottom:'1.25rem',
               border:'0.5px solid #AFA9EC' };
const V = '#534AB7', VL = '#EEEDFE', VD = '#3C3489';
const btnPrimary = { background:V, color:'#fff', border:'none', borderRadius:10, cursor:'pointer', fontWeight:500 };
const tabActive  = { padding:'5px 12px', borderRadius:100, fontSize:12, fontWeight:500,
                     background:V, color:'#fff', cursor:'pointer' };
const tabInactive = { padding:'5px 12px', borderRadius:100, fontSize:12,
                      background:'#fff', color:'#888', cursor:'pointer', border:'0.5px solid #e8e8e8' };
const eyebrow  = { fontSize:11.5, fontWeight:500, color:V, textTransform:'uppercase', letterSpacing:'0.1em', marginBottom:'0.4rem' };
const secTitle = { fontFamily:'Georgia,serif', fontSize:30, fontWeight:700, marginBottom:'0.5rem' };
const secSub   = { fontSize:14, color:'#888', maxWidth:480, lineHeight:1.7, marginBottom:'2rem' };
const catCard  = { borderRadius:16, padding:'1.5rem', border:'0.5px solid #e8e8e8',
                   background:'#fff', position:'relative', overflow:'hidden' };
const catIcon  = { width:48, height:48, borderRadius:14, display:'flex', alignItems:'center',
                   justifyContent:'center', marginBottom:'1rem', fontSize:22 };
const catTitle = { fontFamily:'Georgia,serif', fontSize:18, fontWeight:700, marginBottom:6 };
const catDesc  = { fontSize:13, color:'#888', lineHeight:1.65, marginBottom:'1rem' };
const ribbon   = { position:'absolute', top:14, right:14, color:'#fff', fontSize:10,
                   fontWeight:600, padding:'3px 10px', borderRadius:100 };
const pillTag  = { padding:'4px 10px', borderRadius:100, fontSize:11.5, border:'0.5px solid #e8e8e8',
                   color:'#888', background:'#f8f7ff' };

export default HomePage;
