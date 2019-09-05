void leaf() {
  __asm__("incb %ah");
  }

void main() {
  leaf();
}