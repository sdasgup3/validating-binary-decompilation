void leaf() {
  __asm__("setp -4(%rbp)");
  }

void main() {
  leaf();
}