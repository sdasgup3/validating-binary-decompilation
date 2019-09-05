void leaf() {
  __asm__("cmovcq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}