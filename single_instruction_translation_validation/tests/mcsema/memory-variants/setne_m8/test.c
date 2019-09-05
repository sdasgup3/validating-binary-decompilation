void leaf() {
  __asm__("setne -4(%rbp)");
  }

void main() {
  leaf();
}