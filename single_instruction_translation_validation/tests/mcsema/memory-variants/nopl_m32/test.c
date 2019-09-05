void leaf() {
  __asm__("nopl -4(%rbp)");
  }

void main() {
  leaf();
}