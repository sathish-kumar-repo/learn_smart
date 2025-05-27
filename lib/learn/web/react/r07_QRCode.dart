import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/React/topicsName/reactTopics.dart';

class ReactCreateComponents extends StatefulWidget {
  const ReactCreateComponents({Key? key}) : super(key: key);

  @override
  State<ReactCreateComponents> createState() => _ReactCreateComponentsState();
}

class _ReactCreateComponentsState extends State<ReactCreateComponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: MyPage(
        children: [
          const H1('Creating Qr Code Generator using useState'),
          Code(title: 'QrCode.jsx', code: code1, type: 'jsx'),
          Code(title: 'QrCode.css', code: code2, type: 'css'),
          Code(title: 'notes.txt', code: code3, type: 'txt'),
        ],
      ),
    );
  }
}

var code3 = '''
state - particular data maintain the particular component

to manage the state (using useState)
''';
var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap");

* {
  box-sizing: border-box;
  font-family: "Inter", sans-serif;
}
:root {
  --theme-color: #3498db;
}
.app-container {
  width: 100%;
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.app-container h1 {
  font-weight: 600;
  font-size: 18px;
  color: var(--theme-color);
  border-bottom: 1px solid #f1efef;
  padding: 10px 0px;
}
.qr-code-img {
  padding: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.input-label {
  display: block;
  margin-bottom: 8px;
  color: #3498db;
  font-size: 15px;
  font-weight: 500;
}

input[type="text"] {
  padding: 12px;
  margin-bottom: 20px;
  width: 100%;
  font-size: 16px;
  border: 2px solid var(--theme-color);
  outline: none;
}

button {
  padding: 15px 20px;
  font-size: 18px;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s;
}
.generate-btn {
  background-color: var(--theme-color);
}
.generate-btn:disabled {
  background-color: #bdc3c7;
  cursor: not-allowed;
}
.download-btn {
  background-color: #27ae60;
  margin-left: 10px;
}
.download-btn:hover {
  background-color: #219a52;
}

.footer {
  margin-top: 30px;
}
.footer span {
  color: var(--theme-color);
}
''';
var code1 = '''
import { useState } from "react";
import "./QrCode.css";

export const QrCode = () => {
  const [img, setImg] = useState("");
  const [loading, setLoading] = useState(false);
  const [qrData, setQrData] = useState("http://localhost:5173/");
  const [qrSize, setQrSize] = useState(150);

  async function generateQR() {
    setLoading(true);
    try {
      const url = `https://api.qrserver.com/v1/create-qr-code/?size=\${qrSize}x\${qrSize}&data=\${encodeURIComponent(qrData)}`; // there is any sensitive data(symbols,..) its automatically encoded
      setImg(url);
    } catch (error) {
      console.log("Error generating QR Code", error);
    } finally {
      setLoading(false);
    }
  }
  function downloadQR() {
    fetch(img)
      .then((response) => response.blob())
      .then((blob) => {
        const link = document.createElement("a");
        link.href = URL.createObjectURL(blob);
        link.download = `QrCode.png`;
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
      })
      .catch((error) => {
        console.log("Error Downloading QR Code", error);
      });
  }
  return (
    <div className="app-container">
      <h1>QR CODE GENERATOR</h1>
      {loading && <p>Please wait...</p>}
      {img && <img src={img} alt="QR Code" className="qr-code-img" />}
      <div>
        <label htmlFor="dataInput" className="input-label">
          Data for QR Code
        </label>
        <input
          type="text"
          id="dataInput"
          placeholder="Enter data for QR code"
          value={qrData}
          onChange={(e) => setQrData(e.target.value)}
        />
        <label htmlFor="sizeInput" className="input-label">
          Image size(e.g., 150)
        </label>
        <input
          type="text"
          id="sizeInput"
          placeholder="Enter image sizeInput"
          value={qrSize}
          onChange={(e) => setQrSize(e.target.value)}
        />
        <button
          className="generate-btn"
          onClick={generateQR}
          disabled={loading}
        >
          Generate QR Code
        </button>
        <button className="download-btn" onClick={downloadQR}>
          Download QR Code
        </button>
      </div>
      <p className="footer">
        Designed by <span>Sathish Kumar</span>
      </p>
    </div>
  );
};
''';
