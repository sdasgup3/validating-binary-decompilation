void leaf() {
  __asm__("setnz %ah");
  }

void main() {
  leaf();
}